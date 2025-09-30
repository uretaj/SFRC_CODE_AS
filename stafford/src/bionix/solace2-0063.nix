with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "v5/zZ/SHA256E-s4797338925--7cf7e250946d9c3d8c462a96c4f51b53a9ae265140e433448fb569217100f5bb.gz/SHA256E-s4797338925--7cf7e250946d9c3d8c462a96c4f51b53a9ae265140e433448fb569217100f5bb.gz";
      r2 = "x0/X8/SHA256E-s4753887514--7056207a8b8d09656b5308aa3035593fa50d2008c81cf281cdbbfd1dfcad0ae0.gz/SHA256E-s4753887514--7056207a8b8d09656b5308aa3035593fa50d2008c81cf281cdbbfd1dfcad0ae0.gz";
    }

    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "Q4/MQ/SHA256E-s4740907055--e5da482bcee9f079ec2ccf3b36a9908aac4483b918a55e89287602f38f8d0b01.gz/SHA256E-s4740907055--e5da482bcee9f079ec2ccf3b36a9908aac4483b918a55e89287602f38f8d0b01.gz";
      r2 = "w0/Gm/SHA256E-s4727379625--ebaf8dec369d153d1e9ad07060b59e7d7d700bea4c161e8c92f9e0bcb84aefff.gz/SHA256E-s4727379625--ebaf8dec369d153d1e9ad07060b59e7d7d700bea4c161e8c92f9e0bcb84aefff.gz";
    }

    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "kv/q9/SHA256E-s6945994934--830c3fb88bcc3b9ea75d5a41595640d5c9028517524412e55b4dadef8b6b3747.gz/SHA256E-s6945994934--830c3fb88bcc3b9ea75d5a41595640d5c9028517524412e55b4dadef8b6b3747.gz";
      r2 = "gz/Kq/SHA256E-s6889582064--c125cdbd61526daa4713f987713d25bf997845e337c61f5078145b44d0c1e9a3.gz/SHA256E-s6889582064--c125cdbd61526daa4713f987713d25bf997845e337c61f5078145b44d0c1e9a3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "K3/9Z/SHA256E-s1071723184--e5d9866fa7dbf633f5902c7343c9c5bc3dab2ae65cb21900e137730bb5cf6494.gz/SHA256E-s1071723184--e5d9866fa7dbf633f5902c7343c9c5bc3dab2ae65cb21900e137730bb5cf6494.gz";
      r2 = "Pm/1j/SHA256E-s1073463529--02dff052ecb0a8cfdc6117a7c04dc31fb7373f86134597a5b4cca2f7ce798063.gz/SHA256E-s1073463529--02dff052ecb0a8cfdc6117a7c04dc31fb7373f86134597a5b4cca2f7ce798063.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "x9/72/SHA256E-s1084686658--61c153a3a9bb98b32653dc03c7d106e1ac30ec65a197d2fd431aca5da2906ae9.gz/SHA256E-s1084686658--61c153a3a9bb98b32653dc03c7d106e1ac30ec65a197d2fd431aca5da2906ae9.gz";
      r2 = "9g/jQ/SHA256E-s1085418839--c4424d938222e38cea1328ebfeffb3419ef66a2c7ca726861bc76c3aa518af29.gz/SHA256E-s1085418839--c4424d938222e38cea1328ebfeffb3419ef66a2c7ca726861bc76c3aa518af29.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Mg/xx/SHA256E-s1081350271--221e19b617adf86e98f4d5f2e837813659e324106fa90a6c3cc1b871c4817a59.gz/SHA256E-s1081350271--221e19b617adf86e98f4d5f2e837813659e324106fa90a6c3cc1b871c4817a59.gz";
      r2 = "90/gJ/SHA256E-s1078194368--3596786d44e2d5b7cb1ecba81cb681446d09dec62bad243a7d98dfa4c14ecca9.gz/SHA256E-s1078194368--3596786d44e2d5b7cb1ecba81cb681446d09dec62bad243a7d98dfa4c14ecca9.gz";
    }
    {
      site = "1.5";
      class = "tumours";
      pdx = false;
      r1 = "38/7q/SHA256E-s5500601503--fc6b1c885afbb8b0adc5eff0f6e02a3a0c9df279bb18631f30a302bce8656217.gz/SHA256E-s5500601503--fc6b1c885afbb8b0adc5eff0f6e02a3a0c9df279bb18631f30a302bce8656217.gz";
      r2 = "96/M9/SHA256E-s5473635077--d8b4a0e80ee2697b9ddb833d93ac8ac5c73bbf598bbc54ee66b808383b138f71.gz/SHA256E-s5473635077--d8b4a0e80ee2697b9ddb833d93ac8ac5c73bbf598bbc54ee66b808383b138f71.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0063";
    typeHla = true;
    capture = TwistV2HR;
  }
