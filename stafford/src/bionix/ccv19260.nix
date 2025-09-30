with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "XG/z8/SHA256E-s5578666969--db46c3110b1c468b95eff490fc7bcfdeb4ca934e85c3fa81d31f00a4327a5889.gz/SHA256E-s5578666969--db46c3110b1c468b95eff490fc7bcfdeb4ca934e85c3fa81d31f00a4327a5889.gz";
      r2 = "p9/Gq/SHA256E-s5583526646--31c7b4741536e0043d058d3ba39ea2cbde698894a1c704bd50044a1a63cd5fbe.gz/SHA256E-s5583526646--31c7b4741536e0043d058d3ba39ea2cbde698894a1c704bd50044a1a63cd5fbe.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV19260";
  }
