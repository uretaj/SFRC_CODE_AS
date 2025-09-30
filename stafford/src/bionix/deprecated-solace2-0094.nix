with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "zP/q7/SHA256E-s12431796636--7a8eaf25ed26a00d1fd79e69a07edce539b13af227fab3a925d6a31816623971.gz/SHA256E-s12431796636--7a8eaf25ed26a00d1fd79e69a07edce539b13af227fab3a925d6a31816623971.gz";
      r2 = "QV/6g/SHA256E-s12685360730--06eaec6d604cf52dd58a4b06d2dd9dd3ca8b3d9021ef0be56cece0edbb09bc72.gz/SHA256E-s12685360730--06eaec6d604cf52dd58a4b06d2dd9dd3ca8b3d9021ef0be56cece0edbb09bc72.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "66/Zv/SHA256E-s5909781799--108afedb32762482bd2f9669c50fffef8becb1a8ad410121474f683057046824.gz/SHA256E-s5909781799--108afedb32762482bd2f9669c50fffef8becb1a8ad410121474f683057046824.gz";
      r2 = "1K/JK/SHA256E-s6273093082--109adf0ee556e072ea2e412015d202ed9d5028d50693ac96b6531443c56cfb4c.gz/SHA256E-s6273093082--109adf0ee556e072ea2e412015d202ed9d5028d50693ac96b6531443c56cfb4c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    name = "SOL2_0094";
  }
