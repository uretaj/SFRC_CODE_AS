with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "0F/j6/SHA256E-s4186338645--713e2e0b4cfdcd9e7f687432e700166dc23e728b0a1f65bf443c65a932d94d8a.gz/SHA256E-s4186338645--713e2e0b4cfdcd9e7f687432e700166dc23e728b0a1f65bf443c65a932d94d8a.gz";
      r2 = "1Q/QJ/SHA256E-s3971047773--4f0cb1bd6274367f1ccfb82ebc284df772e71228e6522de0725bf81ccb2221aa.gz/SHA256E-s3971047773--4f0cb1bd6274367f1ccfb82ebc284df772e71228e6522de0725bf81ccb2221aa.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "Pv/XP/SHA256E-s1628504804--2fe2cbe22652f4a8a5045ff14719e5bf779f9e0f269b18e574b1fc30d4e7cf86.gz/SHA256E-s1628504804--2fe2cbe22652f4a8a5045ff14719e5bf779f9e0f269b18e574b1fc30d4e7cf86.gz";
      r2 = "ZK/FV/SHA256E-s1701941527--dba26a6d5669ce4ad9be577c22b721f116abde5d9563da72ab00dea1ec769418.gz/SHA256E-s1701941527--dba26a6d5669ce4ad9be577c22b721f116abde5d9563da72ab00dea1ec769418.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "6w/Jj/SHA256E-s15105505869--412c49b163eb7c9e59bee726d28bbe4270f4febac029cace0dcc9c76aebbc821.gz/SHA256E-s15105505869--412c49b163eb7c9e59bee726d28bbe4270f4febac029cace0dcc9c76aebbc821.gz";
      r2 = "2X/M8/SHA256E-s14106099817--6cd1ae2894826f245fbd2cc073767ab5bd82c2e4f6c1d9d069a07355ae5b0234.gz/SHA256E-s14106099817--6cd1ae2894826f245fbd2cc073767ab5bd82c2e4f6c1d9d069a07355ae5b0234.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "w0/mx/SHA256E-s6326106220--871f425351883c460e8d6d4cbac10e3b9f503bd75d582e3e7b60ad55e248802e.gz/SHA256E-s6326106220--871f425351883c460e8d6d4cbac10e3b9f503bd75d582e3e7b60ad55e248802e.gz";
      r2 = "mP/w1/SHA256E-s6597676369--14a22add008978d098e50f91f840bd793877b0966d12b40a83aad492fb3628cd.gz/SHA256E-s6597676369--14a22add008978d098e50f91f840bd793877b0966d12b40a83aad492fb3628cd.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0003";
  }
