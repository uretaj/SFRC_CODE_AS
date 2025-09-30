with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z1/Z8/SHA256E-s2290929103--8c10c72b254fb850286f8a4adf4ced556569f0c38cba1964a2ed3a57b45fab37.gz/SHA256E-s2290929103--8c10c72b254fb850286f8a4adf4ced556569f0c38cba1964a2ed3a57b45fab37.gz";
      r2 = "mj/z8/SHA256E-s2315466111--618f240c53cebbf99b96103b665803a89516ada77c7d944bd7b8464a3dd90127.gz/SHA256E-s2315466111--618f240c53cebbf99b96103b665803a89516ada77c7d944bd7b8464a3dd90127.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "9Z/Fq/SHA256E-s2293271085--6929179248d5a60b79892f74cbb95a0b9ee9f0d8bcc7b27c326d845097f2647c.gz/SHA256E-s2293271085--6929179248d5a60b79892f74cbb95a0b9ee9f0d8bcc7b27c326d845097f2647c.gz";
      r2 = "Px/8X/SHA256E-s2317942924--592b45bd44490c7e80eaf505799fff9b46dc5401585386cd6e7014b71770bb43.gz/SHA256E-s2317942924--592b45bd44490c7e80eaf505799fff9b46dc5401585386cd6e7014b71770bb43.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV34389";
  }
