with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1U_Germline";
      class = "normals";
      pdx = false;
      r1 = "mk/79/SHA256E-s3632948926--edee590d4d8206c6228567e81b2c62c8fd76dfc0cbc5667b63cac45b9a3d067f.gz/SHA256E-s3632948926--edee590d4d8206c6228567e81b2c62c8fd76dfc0cbc5667b63cac45b9a3d067f.gz";
      r2 = "5F/1k/SHA256E-s3586696132--4325c8e10e549f8bb3cbb6c9248ee71fbd55b059787bda46266ca6f91c9f4c26.gz/SHA256E-s3586696132--4325c8e10e549f8bb3cbb6c9248ee71fbd55b059787bda46266ca6f91c9f4c26.gz";
    }

    {
      site = "1U_Germline";
      class = "normals";
      pdx = false;
      r1 = "wg/0q/SHA256E-s3625053502--ed0b139b18fed8e97c3f64fd5c4f06fc06d07b255e54890aaad14f7d5de39718.gz/SHA256E-s3625053502--ed0b139b18fed8e97c3f64fd5c4f06fc06d07b255e54890aaad14f7d5de39718.gz";
      r2 = "zQ/fg/SHA256E-s3596879464--c8de3bb57dd6bf45c0ffc673d0b5ceb341082ea38208354196720314220ba897.gz/SHA256E-s3596879464--c8de3bb57dd6bf45c0ffc673d0b5ceb341082ea38208354196720314220ba897.gz";
    }

    {
      site = "1U_Germline";
      class = "normals";
      pdx = false;
      r1 = "fk/P3/SHA256E-s3616025508--063afb2fd0b923f2509b43af7a7e457cee37396cb459ea913a2d38c374561db5.gz/SHA256E-s3616025508--063afb2fd0b923f2509b43af7a7e457cee37396cb459ea913a2d38c374561db5.gz";
      r2 = "F1/XJ/SHA256E-s3579831309--ec2e614fd9ef5c4e5152357974e338bf2f0f4c563fd57f48819be4748a45f768.gz/SHA256E-s3579831309--ec2e614fd9ef5c4e5152357974e338bf2f0f4c563fd57f48819be4748a45f768.gz";
    }

    {
      site = "1U_Germline";
      class = "normals";
      pdx = false;
      r1 = "J3/GM/SHA256E-s3487739302--245a433ff100832cd4658021c71f930de77c0f9fcf1d93bcd80e056dac98875d.gz/SHA256E-s3487739302--245a433ff100832cd4658021c71f930de77c0f9fcf1d93bcd80e056dac98875d.gz";
      r2 = "87/29/SHA256E-s3470087779--43b0d4f455280a94545be9815b0503cd178afd9bd71eed27605a1a07484bceb1.gz/SHA256E-s3470087779--43b0d4f455280a94545be9815b0503cd178afd9bd71eed27605a1a07484bceb1.gz";
    }

    {
      site = "1U_Tumour";
      class = "tumours";
      pdx = false;
      r1 = "24/4j/SHA256E-s3859129067--81ff976b6ac35d0bbd7891a5c0c0b321d1c4b667b5bdc5b093ccb763bbd1f09c.gz/SHA256E-s3859129067--81ff976b6ac35d0bbd7891a5c0c0b321d1c4b667b5bdc5b093ccb763bbd1f09c.gz";
      r2 = "J1/m8/SHA256E-s3817158456--ac0e86470a901a9500ffeb7d77e0cc439c74feb964fc8a7422824e8d5c553bb2.gz/SHA256E-s3817158456--ac0e86470a901a9500ffeb7d77e0cc439c74feb964fc8a7422824e8d5c553bb2.gz";
    }

    {
      site = "1U_Tumour";
      class = "tumours";
      pdx = false;
      r1 = "Mk/v0/SHA256E-s3855591928--4db11d69abc2f03c77543fbf471c312112f4a18f111975752e9fd619396c7d7f.gz/SHA256E-s3855591928--4db11d69abc2f03c77543fbf471c312112f4a18f111975752e9fd619396c7d7f.gz";
      r2 = "8g/V7/SHA256E-s3831488194--326e5b1f9f746561db39a95e798defa9de8e758d57db27727d3c9335c06d3e8a.gz/SHA256E-s3831488194--326e5b1f9f746561db39a95e798defa9de8e758d57db27727d3c9335c06d3e8a.gz";
    }

    {
      site = "1U_Tumour";
      class = "tumours";
      pdx = false;
      r1 = "Kp/p4/SHA256E-s3841252029--489e947757e7e6338947887ad5931e078e925598af18730767bfc649a65c00b3.gz/SHA256E-s3841252029--489e947757e7e6338947887ad5931e078e925598af18730767bfc649a65c00b3.gz";
      r2 = "M0/g7/SHA256E-s3808945624--4b59d4427005c9c238d6d812f3f82c889786c0d4fb120d02a8f053aa45a82b9c.gz/SHA256E-s3808945624--4b59d4427005c9c238d6d812f3f82c889786c0d4fb120d02a8f053aa45a82b9c.gz";
    }

    {
      site = "1U_Tumour";
      class = "tumours";
      pdx = false;
      r1 = "4f/qq/SHA256E-s3775803806--e0e8c8d7a2969c1b193320707ed932633978a2ccfa30f743aff10d5f55964252.gz/SHA256E-s3775803806--e0e8c8d7a2969c1b193320707ed932633978a2ccfa30f743aff10d5f55964252.gz";
      r2 = "5g/59/SHA256E-s3760375161--d83bcddee1249f1b1574cbaaae1d123a386c867f6620ca1c4b707b92938492c6.gz/SHA256E-s3760375161--d83bcddee1249f1b1574cbaaae1d123a386c867f6620ca1c4b707b92938492c6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE05";
    capture = TwistV2HR;
  }
