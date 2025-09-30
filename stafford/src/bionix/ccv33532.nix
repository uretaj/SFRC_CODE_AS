with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Pg/gQ/SHA256E-s2469464828--d95b0cfa444d92f0f574e3f6170c180d9b7c932957683cc2a8cb2f82491fbc8a.gz/SHA256E-s2469464828--d95b0cfa444d92f0f574e3f6170c180d9b7c932957683cc2a8cb2f82491fbc8a.gz";
      r2 = "7k/8g/SHA256E-s2501275930--f08337b04c3bc873d9221fcdf5f08cfd1ac3629641960d99f92f324803e6d0ac.gz/SHA256E-s2501275930--f08337b04c3bc873d9221fcdf5f08cfd1ac3629641960d99f92f324803e6d0ac.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kW/68/SHA256E-s2482786931--819a459c46fe84fd5ac48365ec00ba44aed4b74eab383207e67b595214970bbd.gz/SHA256E-s2482786931--819a459c46fe84fd5ac48365ec00ba44aed4b74eab383207e67b595214970bbd.gz";
      r2 = "X5/g7/SHA256E-s2514384044--455b943bccffea490e07faf773b647873892a0466bde2150f6de775f56829d32.gz/SHA256E-s2514384044--455b943bccffea490e07faf773b647873892a0466bde2150f6de775f56829d32.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV33532";
  }
