with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Zq/gm/SHA256E-s1763565340--c00ba3e59e03f51b8dae3ba29ff3e98012a419610de64cc81e7efa8b7e7ad917.gz/SHA256E-s1763565340--c00ba3e59e03f51b8dae3ba29ff3e98012a419610de64cc81e7efa8b7e7ad917.gz";
      r2 = "3x/W4/SHA256E-s1774148833--5b4d513ebb1635ed8ad081d0aef8aa23dfa23b443a91dfbeefc8e7852abaf965.gz/SHA256E-s1774148833--5b4d513ebb1635ed8ad081d0aef8aa23dfa23b443a91dfbeefc8e7852abaf965.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "61/K1/SHA256E-s1700712021--bad900ed69cc79a1d1ab0707e50fcabca5252a1a8995b37d12752f36650d8f0a.gz/SHA256E-s1700712021--bad900ed69cc79a1d1ab0707e50fcabca5252a1a8995b37d12752f36650d8f0a.gz";
      r2 = "vX/1Z/SHA256E-s1698353875--9e543a941549142da273a26150a9193d9001fd7bf89a180a86727fbb15a38040.gz/SHA256E-s1698353875--9e543a941549142da273a26150a9193d9001fd7bf89a180a86727fbb15a38040.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV28887";
  }
