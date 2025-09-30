with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2D";
      class = "tumours";
      pdx = false;
      r1 = "P2/VZ/SHA256E-s9470185242--d807c652eecf12b69ffb9ad988ccb11ebd3c24842330583e1e1dc429d6da063b.gz/SHA256E-s9470185242--d807c652eecf12b69ffb9ad988ccb11ebd3c24842330583e1e1dc429d6da063b.gz";
      r2 = "6P/8K/SHA256E-s9318612141--44e542ebe71f6ea11d3041f4019cf84572ca8238971e33eaffc3d61ce12d52f8.gz/SHA256E-s9318612141--44e542ebe71f6ea11d3041f4019cf84572ca8238971e33eaffc3d61ce12d52f8.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "V8/JK/SHA256E-s4817751563--754d5a2609c3ef23ccca1cdad102941b66926be9a8feb88ea796105d063d640e.gz/SHA256E-s4817751563--754d5a2609c3ef23ccca1cdad102941b66926be9a8feb88ea796105d063d640e.gz";
      r2 = "6X/Z6/SHA256E-s4972802705--5d3a3f5990f92db158a2f4333b36ea1575d27958af233ecbb19ba13d6e0e0b7f.gz/SHA256E-s4972802705--5d3a3f5990f92db158a2f4333b36ea1575d27958af233ecbb19ba13d6e0e0b7f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0065";
  }
