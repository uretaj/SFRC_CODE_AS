with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B8";
      class = "tumours";
      pdx = false;
      r1 = "VK/50/SHA256E-s17624083499--8c09840049322658f5ab567afdc48ffe1a84d828032db61672dc7a85cd09e4d7.gz/SHA256E-s17624083499--8c09840049322658f5ab567afdc48ffe1a84d828032db61672dc7a85cd09e4d7.gz";
      r2 = "8Z/pQ/SHA256E-s17867206533--c8c8604c980b0e612d0216643ba872333ec862ccc0ff48ab3d591134c7b4a309.gz/SHA256E-s17867206533--c8c8604c980b0e612d0216643ba872333ec862ccc0ff48ab3d591134c7b4a309.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GQ/Qm/SHA256E-s6119810979--fc227b73e5aebeab4bc162a360f331d84ccda2fb9be1e20bdf34cf79ac6b204b.gz/SHA256E-s6119810979--fc227b73e5aebeab4bc162a360f331d84ccda2fb9be1e20bdf34cf79ac6b204b.gz";
      r2 = "xK/w2/SHA256E-s6247241632--a215f3b6bc277bc2c8a748d085a8f9bbe6430b0f1705d50255229490d1185840.gz/SHA256E-s6247241632--a215f3b6bc277bc2c8a748d085a8f9bbe6430b0f1705d50255229490d1185840.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    name = "SOL2_0129";
    capture = CREv2;
  }
