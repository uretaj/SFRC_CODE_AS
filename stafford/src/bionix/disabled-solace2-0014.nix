with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "32/MX/SHA256E-s979930441--76313874f61719614982141d276d394c5f28787f5fd4359f4a3f8c85a6e78661.gz/SHA256E-s979930441--76313874f61719614982141d276d394c5f28787f5fd4359f4a3f8c85a6e78661.gz";
      r2 = "mF/V9/SHA256E-s980232849--b4f3b7e0d062b44cdf3cb772fb0bc7e88709d364401931c1469641ebf47cc441.gz/SHA256E-s980232849--b4f3b7e0d062b44cdf3cb772fb0bc7e88709d364401931c1469641ebf47cc441.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vk/p1/SHA256E-s981691171--57bab04ab715b1639a3384ae251104af9427cff36b7757b44e2d848b7876ff8f.gz/SHA256E-s981691171--57bab04ab715b1639a3384ae251104af9427cff36b7757b44e2d848b7876ff8f.gz";
      r2 = "4W/Gq/SHA256E-s980909944--f82eb09e9ace265cf8ff5261592b995553b9d9975c3aef1ee28dedca3184c8d4.gz/SHA256E-s980909944--f82eb09e9ace265cf8ff5261592b995553b9d9975c3aef1ee28dedca3184c8d4.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "XJ/77/SHA256E-s977961696--5e6505fcca60175b7609e5917bc9cec1c288878dd1b9b3d413ed5b0f745bc2bc.gz/SHA256E-s977961696--5e6505fcca60175b7609e5917bc9cec1c288878dd1b9b3d413ed5b0f745bc2bc.gz";
      r2 = "q9/mj/SHA256E-s973165121--ec659ad49affc576e813ebaf29175fe1be5dc6b6f14e24a64bace2c0767ab779.gz/SHA256E-s973165121--ec659ad49affc576e813ebaf29175fe1be5dc6b6f14e24a64bace2c0767ab779.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0014";
    capture = TwistV2HR;
  }
