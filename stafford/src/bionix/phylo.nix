{
  bionix ? (import ./milton-slurm.nix {}).bionix,
  flags ? "",
  sample,
}:
with bionix;
with lib; let
  inputs = (import sample {}).linkInputs;
  facetsdb = facets.reporting.db {} (mapAttrsToList (siteid: {postproc, ...}: {
      inherit siteid postproc;
      donor = name;
    })
    inputs.facets);
  name = inputs."report.org".name;
  vardb = dbs.db {id = name;} inputs."octopus.vcf";
  phylogenies = (builtins.getFlake "git+https://vk3.wtf/cgit/phylogenies.git").packages.x86_64-linux.default;
  sites = attrNames inputs.facets;
in
  stage {
    name = "phylo";
    buildCommand = ''
      printf "%s" "$sql" | sqlite3 -tabs -header > input
      cluster ${flags} input props tree
      mkdir $out
      cp props tree $out
    '';
    buildInputs = [pkgs.sqlite phylogenies];
    sql = ''
         attach "${facetsdb}" as facets;
         attach "${vardb}" as vars;
       select mutid, ${concatMapStringsSep "," (s: ''
          total (count) filter (where s.siteid = '${s}') as "${s}-count",
          total (depth) filter (where s.siteid = '${s}') as "${s}-depth"
        '')
        sites}
      from
        calls
        natural join callfilters
        natural join haplotypes
        natural join allelecounts
        natural join muts as m
        natural join samples as s
        left join regions as r on m.chr = case when r.chr = 23 then  'X'
          when r.chr = 24 then 'Y'
        else
          cast(r.chr as text)
        end
          and m.pos <= r.end
          and m.pos >= r.start
          and r.siteid = s.siteid
       where
         somatic
         and filter = 'PASS'
         and (IFNULL (tcn, 2) == 2)
         and (IFNULL (lcn, 1) == 1)
       group by
         mutid;
    '';
  }
