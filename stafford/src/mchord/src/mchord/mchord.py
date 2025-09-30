#! /usr/bin/env nix-shell
#! nix-shell --pure -I nixpkgs=channel:nixos-23.05 -i python3 -p python39Packages.scipy
"""
McHoRD

A tool for determining HRD status from genome wide SNP capture panels

Created by Matthew Wakefield.
Copyright (c) 2020-2021  Matthew Wakefield
The Walter and Eliza Hall Institute and The University of Melbourne.
All rights reserved.

For Research Use Only

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
 this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation and/or
 other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
 may be used to endorse or promote products derived from this software without
 specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 DAMAGE.
"""

import argparse
import json
import sys
import textwrap
from collections import UserDict, defaultdict
from copy import deepcopy
from typing import TextIO, Tuple, Optional, Union, Iterable  #BinaryIO, Union, Iterable, Callable

from scipy.stats import ks_2samp

__author__ = "Matthew Wakefield"
__copyright__ = ("Copyright 2020-2021 Matthew Wakefield"
                 "The Walter and Eliza Hall Institute and "
                 "The University of Melbourne")
__credits__ = ["Matthew Wakefield", ]
__license__ = "BSD-3-Clause"
__version__ = "0.2"
__maintainer__ = "Matthew Wakefield"
__email__ = "wakefield@wehi.edu.au"
__status__ = "Development/Beta"

USAGE: str = """mchord [--targets TARGETS]
       [--samples_per_vcf INT]
       [--outfile OUTFILENAME]
        --make_null INPUTVCF [...]
       
mchord [--targets TARGETS]
       [--null NULLFILENAME]
       [--outfile OUTFILENAME]
       [--samples_per_vcf INT]
       [--show_ascii]
       INPUTVCF [...]
       
mchord [ -h --help | --version]
"""

def get_sample_names(vcffile: Union[TextIO,str],
                     ) -> list[str]:
    """Get sample names from a vcf format file

    Parameters
    ----------
    vcffile : TextIO
        a vcf format text file object

    returns
    ------
    list[str]
        a list of sample names
    """
    if type(vcffile) is str:
        vcffile = open(vcffile)
    for line in vcffile:
        if not line or line[0:2] == '##':
            continue
        if line[0:6] == '#CHROM':
            return line.split()[9:]
    vcffile.close()
    raise RuntimeError(f'No sample names found in {vcffile}. Check file format')


def get_calls(vcffile: Union[TextIO,str],
              call_position: int = -1,
              include_somatic: bool = False,
              ) -> Tuple[str, int, str]:
    """Process a vcf file of SNPs

    Parameters
    ----------
    vcffile : TextIO
        a vcf format text file object

    call_position : int [ Default : -1 ]
        index of location in vcf sample fields to call

    include_somatic : bool

    Yields
    ------
    str
        chromosome call is on
    int
        position of call on chromosome
    str
        vcf call string
    """
    if type(vcffile) is str:
        vcffile = open(vcffile)
    with vcffile as infile:
        for line in infile:
            if not line or line[0] == '#':
                # print('.',end = '', file=sys.stderr)
                # sys.stderr.flush()
                continue
            if line.count('SOMATIC') and not include_somatic:
                continue
            line = line.split()
            yield line[0].lower(), int(line[1]), line[call_position]


def is_het(callstring: str,
           ) -> bool:
    """Determine if callstring contains a valid heterozygous SNV call

    Parameters
    ----------
    callstring : str
        a vcf call string

    Returns
    -------
    bool
    """
    if callstring.split(":")[-1] != 'PASS':
        return False
    genotype = callstring.split(":")[0]
    alleles = genotype.split("|")
    if len(set(alleles)) > 1:
        return True
    else:
        return False


class ChrRegionStates(UserDict):
    """A dictionary like object that stores interval states
    and allows states to be set or returned with a point"""

    def add_region(self,
                   start: int,
                   end: int,
                   ):
        """add a region to the regionstate object"""
        self.data[(start, end)] = False

    def set_state(self,
                  point: int,
                  state: bool = True,
                  ) -> bool:
        """set the state of a region based on a point.
        Returns False if point is not within a existing region

        Parameters
        ----------
        point : int
            The point associated with the state
        state : bool
            State to set for data spans
            default = True

        Returns
        -------
        bool
        """
        for span in self.data:
            if int(span[0]) <= int(point) <= int(span[1]):
                self.data[span] = state
                return True
        return False

    def get_state(self,
                  point: int,
                  default: bool =False,
                  ) -> bool:
        """"get the state associated with a point
        If no region exists corresponding to the point returns the default value

        Parameters
        ----------
        point : int
            The point to interrogate for state
        default : bool
            The default state to return
            default = False

        Returns
        -------
            bool
        """
        for start, end in self.data:
            if start <= point <= end:
                return self.data[(start, end)]
        return default


class RegionStates(UserDict):
    """A data structure for creating, storing, and manipulating a set of
    ChrRegionStates representing a genome"""
    def __init__(self,
                 bedfile: TextIO = None,
                 ):
        """
        Parameters
        ----------
            bedfile: a file like object in BED format
        """
        super().__init__(self)
        self.data = defaultdict(ChrRegionStates)
        self.lengths = {}
        self.autosomes = [f'chr{x}' for x in range(1, 23)]
        if bedfile:
            self.add_regions(bedfile)


    def __getitem__(self,
                    key):
        return self.data.__getitem__(key)

    def update_lengths(self):
        """Update the lengths stored in the dictionary self.lengths
        to reflect the current length of each ChrRegionState object"""
        for key in self.data:
            self.lengths[key] = len(self.data[key])

    def add_regions(self,
                    bedfile: TextIO,
                    ):
        """
        Add new regions to the RegionState object

        Implemented as a dictionary of ChrRegionStates

        Parameters
        ----------
            bedfile: a file like object in BED format
        """
        if type(bedfile) is str:
            bedfile = open(bedfile)
        with bedfile as thefile:
            for line in thefile:
                line = line.split()
                if len(line) != 3:
                    print('skipping line ', line)
                self.data[line[0].lower()].add_region(line[1], line[2])
        self.update_lengths()
        #check format of chromosome names and update if no chr prefix
        if list(self.data.keys())[0][0:3] != 'chr':
            #print('setting autosomes to chr prefix free format')
            self.autosomes = [f'{x}' for x in range(1, 23)]


    def ascii_map(self,
                  statemap: dict[bool, str] = {True: '.', False: '*'},
                  chromosomes: list[str] = None,
                  ):
        """
        Print an ascii representation of the heterozygous state of the genome

        Parameters
           statemap: dict
           A dictionary mapping True and False to symbols
           default  {True: '.', False: '*'}

           chromosomes: List[str,]
           A list of chromosomes to print
           default [f'chr{x}' for x in range(1, 22)]

        Returns
           A formated string representation of heterozygous states
        """
        output = ""
        if not chromosomes:
            chromosomes = self.autosomes
            # for chrm in sorted(list(self.data.keys())):
        for chrm in chromosomes:
            output += chrm + ' '
            for pos in sorted(list(self.data[chrm].keys())):
                try:
                    output += statemap[self.data[chrm][pos]]
                except KeyError:
                    output += 'E'
            output += '\n'
        return output

    def to_array(self,
                 chromosomes: Optional[list[str]] = None,
                 statemap: dict[bool, float] = {True: -0.55, False: 0.45},
                 na="0",
                 ) -> list:
        # Support for experimental approach. Not in current use.
        output = []
        if not chromosomes:
            chromosomes = self.autosomes
        size = max(self.lengths.values())
        for chrm in chromosomes:
            output.append([na, ] * size)
            for i, pos in enumerate(sorted(list(self.data[chrm].keys()))):
                try:
                    output[-1][i] = statemap[self.data[chrm][pos]]
                except KeyError:
                    output[-1][i] = 'E'
        return output

    def state_runs(self,
                   state: bool = False,
                   chromosomes: Optional[list[str]] = None,
                   ) -> list[int]:
        """
        Generate a list of the length of the run of state

        For example {'Chr1': [False, True, True,],
                     'Chr2': [False, False, False]}
            becomes [1, 3] for state = False

        Parameters
        ----------
            state: bool
            The state we are interested in. Default = False
            chromosomes: list[str]
            The chromosomes to examine
        """
        output = []
        if not chromosomes:
            chromosomes = self.autosomes
            # for chrm in sorted(list(self.data.keys())):
        for chrm in chromosomes:
            state_count = 0
            for pos in sorted(list(self.data[chrm].keys())):
                if state == self.data[chrm][pos]:
                    state_count += 1
                elif state_count:
                    output.append(state_count)
                    state_count = 0
            if state_count:
                output.append(state_count)
        return output

    def set_states_from_vcf(self,
                            filepath: Union[TextIO, str],
                            sample_offset: int = -1,
                            ):
        """
        Read in the region states from a VCF file. Only tested with Octopus

        Parameters
        ----------
            filepath: a textio object or string representing a path to a
            VCF format file created by the Octopus variant caller

            sample_offset: int
            The index from the end of the vcf representing the sample
            default = -1 (The last or only sample in the VCF file)

        """
        for chrm, pos, call in get_calls(filepath, sample_offset):
            if is_het(call):
                self[chrm].set_state(pos, True)


def make_null_distribution(thevcfs: Iterable[Union[TextIO,str]],
                           targets: Union[TextIO,str],
                           offsets: list[int] = [-1,],
                           max_homozygous: int = 20,
                           #max_vcf_size: int = 100000,
                           ):
    """
    Create a null distribution that is the expectation of state runs for a
    normal homologous recombination proficient sample

    Parameters
        thevcfs : A list of VCF files. (Only tested with Octopus)
        targets : A BED format file of target regions
        offsets : A list of sample offsets from end of the VCF file default=[-1]
        max_homozygous: int
            An upper bound for the number of homozygotes observed.
            Useful for processing mixed samples of germline and tumour

    Returns
    --------
        state_runs: list[int]
            A concatenated list of state runs representing the distribution
            in all samples.
    """
    state_runs = []
    for offset in offsets:
        for vcf in thevcfs:
            # if vcf.stat().st_size < max_vcf_size:
            #    print(f"skipping {vcf.name}")
            #    continue
            hetstates = RegionStates(targets)
            hetstates.set_states_from_vcf(vcf, offset)
            #This logic test should probably be implemented in RegionStates
            if not hetstates.ascii_map().count("*" * max_homozygous):
                state_runs += hetstates.state_runs()
    return state_runs


def expand_state_runs(state_runs: list[int],
                      ):
    """
    Expand the distribution of state runs so there is an entry for each non zero
    member of the state

    example
        [1, 4, 0, 2] becomes [1, 4, 4, 4, 4, 2, 2]

    Parameters
        state_runs: list[int]
        A list of the length of runs of a particular state
    """
    result = []
    for x in state_runs:
        result += [x, ] * x
    return result


def read_distribution(distribution_file: TextIO
                      ) -> list[int]:
    """Load a distribution file

    Parameters
    ----------
        distribution_file:TextIO
            A JSON file written by the write_distribution function

    Returns
    -------
        a list of ints corresponding to a state_run distribution
    """
    return json.load(distribution_file)


def write_distribution(distribution: list[int],
                       distribution_file: TextIO,
                       ):
    """
    Write a JSON format file of a state run distribution for later use

    Parameters
    ----------
        distribution: list[int]
            a state run distribution
        distribution_file: TextIO
            the file to save to
    """
    json.dump(distribution, distribution_file)


def main(infiles, targets_bed, outfile, null_distribution,
         show_ascii, make_null, verbose=True):
    if make_null:
        offsets = list(range(-1, -samples_per_vcf - 1, -1))
        null_dist = make_null_distribution(thevcfs=infiles,
                                           targets=targets_bed,
                                           offsets=offsets,
                                           )
        write_distribution(null_dist, outfile)
    else:
        null_dist = read_distribution(null_distribution)
        new_region_states = RegionStates(targets_bed)
        for vcffile in infiles:
            print(vcffile, file=outfile)
            sample_names = get_sample_names(vcffile)
            offsets = list(range(-1, -len(sample_names) - 1, -1))
            for offset in offsets:
                region_states = deepcopy(new_region_states)
                region_states.set_states_from_vcf(vcffile,
                                                 sample_offset=offset)
                print(sample_names[offset], end='\t',file=outfile)
                score = ks_2samp(expand_state_runs(region_states.state_runs()), 
                               expand_state_runs(null_dist)).statistic
                print(f"{score:.3f}", file=outfile)
                if show_ascii:
                    print(region_states.ascii_map(), file=outfile)


def command_line_interface(arguments: str = None):
    parser = argparse.ArgumentParser(prog="McHoRD",
                      usage=USAGE,
                      formatter_class=argparse.RawDescriptionHelpFormatter,
                      description=textwrap.dedent("""\
     ██████   ██████          █████   █████          ███████████   ██████████  
    ░░██████ ██████          ░░███   ░░███          ░░███░░░░░███ ░░███░░░░███ 
     ░███░█████░███   ██████  ░███    ░███   ██████  ░███    ░███  ░███   ░░███
     ░███░░███ ░███  ███░░███ ░███████████  ███░░███ ░██████████   ░███    ░███
     ░███ ░░░  ░███ ░███ ░░░  ░███░░░░░███ ░███ ░███ ░███░░░░░███  ░███    ░███
     ░███      ░███ ░███  ███ ░███    ░███ ░███ ░███ ░███    ░███  ░███    ███ 
     █████     █████░░██████  █████   █████░░██████  █████   █████ ██████████  
    ░░░░░     ░░░░░  ░░░░░░  ░░░░░   ░░░░░  ░░░░░░  ░░░░░   ░░░░░ ░░░░░░░░░░   
                                                                               
    McHoRD - determining HRD status from genome wide SNP capture panels
    
    Created by Matthew Wakefield.
    Copyright (c) 2020-2021  Matthew Wakefield
    The Walter and Eliza Hall Institute and The University of Melbourne.
    All rights reserved.
    
    For Research Use Only
    
    https://opensource.org/licenses/BSD-3-Clause
    """), )

    parser.add_argument('--version',
                        action='store_true',
                        help='print version information and exit',
                        )
    parser.add_argument('--make_null',
                        action='store_true',
                        help='generate a null distribution',
                        )
    parser.add_argument('--null_distribution',
                        type=argparse.FileType('r'),
                        default='null_dist.json',
                        )
    parser.add_argument('--targets',
                        type=str,  # =argparse.FileType('r'),
                        default='targets.bed',
                        )
    parser.add_argument('--show_ascii',
                        action='store_true',
                        )
    parser.add_argument('--outfile', nargs='?',
                        type=argparse.FileType('w'),
                        default=sys.stdout,
                        )
    parser.add_argument('infiles', nargs='*',
                        type=str,  # argparse.FileType('r'),
                        # default = sys.stdin,
                        )

    if arguments:
        parsed_args = parser.parse_args(arguments.split(' '))
    else:
        parsed_args = parser.parse_args()
    if parsed_args.version:
        print(f"McHoRD v{__version__}")
        sys.exit()
    return parsed_args


if __name__ == '__main__':
    args = command_line_interface()
    print(args)
    main(infiles=args.infiles,
         targets_bed=args.targets,
         outfile=args.outfile,
         null_distribution=args.null_distribution,
         show_ascii=args.show_ascii,
         make_null=args.make_null,
         )
