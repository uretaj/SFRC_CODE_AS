with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3A";
      class = "tumours";
      pdx = false;
      r1 = "mP/W8/SHA256E-s15740877169--39f5ea42752b17a5e14e5f93886fed1a33421ab5d3399896954674cbf59078c1.gz/SHA256E-s15740877169--39f5ea42752b17a5e14e5f93886fed1a33421ab5d3399896954674cbf59078c1.gz";
      r2 = "8Q/0v/SHA256E-s16107890045--f407ae9919e6f3e15e77df8390e59f551543e56f45d62c44a3747c38066ef67a.gz/SHA256E-s16107890045--f407ae9919e6f3e15e77df8390e59f551543e56f45d62c44a3747c38066ef67a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9v/k6/SHA256E-s6492728655--833956a59e193778e3e6a9eeab1b72d9a7a6db5e0b380754fdc91795f6d47ad7.gz/SHA256E-s6492728655--833956a59e193778e3e6a9eeab1b72d9a7a6db5e0b380754fdc91795f6d47ad7.gz";
      r2 = "3J/kG/SHA256E-s6884939474--8bbacdcbec5866663bb32e291645b0ee68cce3706e2adc8cd44d3f99cb1d54b1.gz/SHA256E-s6884939474--8bbacdcbec5866663bb32e291645b0ee68cce3706e2adc8cd44d3f99cb1d54b1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0058";
  }
