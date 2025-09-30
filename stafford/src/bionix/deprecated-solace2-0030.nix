with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "kZ/p2/SHA256E-s6179265494--9540acac786168888aad635e1eece7b8d347c169858fd4b164c946e0b6d4489c.gz/SHA256E-s6179265494--9540acac786168888aad635e1eece7b8d347c169858fd4b164c946e0b6d4489c.gz";
      r2 = "f3/Gx/SHA256E-s6563140340--57afec97a9af38511b407082a7a148872766cfbc8653e740f2a7371d747cbf90.gz/SHA256E-s6563140340--57afec97a9af38511b407082a7a148872766cfbc8653e740f2a7371d747cbf90.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "PG/mk/SHA256E-s14572725346--4a0c7ecb7228931443401c766e478c32a5896cf1e0102173ba757ea5f3ea01b0.gz/SHA256E-s14572725346--4a0c7ecb7228931443401c766e478c32a5896cf1e0102173ba757ea5f3ea01b0.gz";
      r2 = "9g/00/SHA256E-s14792503426--9dae304ab8c8c688b17e6acc9573657ef03a9105f02dcd6411d3314b9b129275.gz/SHA256E-s14792503426--9dae304ab8c8c688b17e6acc9573657ef03a9105f02dcd6411d3314b9b129275.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0030";
  }
