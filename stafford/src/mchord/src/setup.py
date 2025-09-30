#!/usr/bin/env python
from setuptools import setup

setup(
    name='mchord',
    version='0.2',
    author='Matthew Wakefield',
    author_email='matthew.wakefield@unimelb.edu.au',
    python_requires='>=3.9',
    install_requires = [
      'setuptools >= 1.1.6',
      'scipy >= 1.6.0',
    ],
    packages=['mchord',
              ],
    scripts = ['mchord/mchord.py'],
    zip_safe = True,
    include_package_data = True,
    url='https://github.com/PapenfussLab/McHoRD.git',
    license='BSD',
    test_suite = "mchord.tests.test_mchord",
    description='mchord - HRD test for capture assays',
    long_description='A tool for testing homologous recombination status of'\
                     'tumors using SNP calls from a tumour only capture panel',
    classifiers=[
          'Development Status :: 4 - Beta',
          'License :: OSI Approved :: BSD License',
          'Operating System :: POSIX',
          'Programming Language :: Python :: 3.9',
          'Programming Language :: Python :: 3.10',
          'Intended Audience :: Science/Research',
          'Topic :: Scientific/Engineering :: Bio-Informatics',
    ],

)
