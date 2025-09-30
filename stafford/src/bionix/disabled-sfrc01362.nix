with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A15";
      class = "tumours";
      pdx = false;
      r1 = "kX/5J/SHA256E-s3655031902--5ac75d8591ad9f2267982e0a89c51246b7d5988f5e72026f931cbc79c6a5242d.gz/SHA256E-s3655031902--5ac75d8591ad9f2267982e0a89c51246b7d5988f5e72026f931cbc79c6a5242d.gz";
      r2 = "10/p4/SHA256E-s3633891101--7b299a5c7aebc72818018b0ba6b727faf02be7501fc30fea619cdfefcddc9b5c.gz/SHA256E-s3633891101--7b299a5c7aebc72818018b0ba6b727faf02be7501fc30fea619cdfefcddc9b5c.gz";
    }

    {
      site = "A15";
      class = "tumours";
      pdx = false;
      r1 = "p9/Mf/SHA256E-s3692967791--20ff33549ff53e26a867efcbf073f946dc02e1f2dc6f4947064c303d42d196b1.gz/SHA256E-s3692967791--20ff33549ff53e26a867efcbf073f946dc02e1f2dc6f4947064c303d42d196b1.gz";
      r2 = "4V/1k/SHA256E-s3675973083--4d1d11d0415ea07729621ed8f7e4902f830711b5a9504652388041e47c4c0930.gz/SHA256E-s3675973083--4d1d11d0415ea07729621ed8f7e4902f830711b5a9504652388041e47c4c0930.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TwistV2HR;
    name = "SFRC01362";
  }
