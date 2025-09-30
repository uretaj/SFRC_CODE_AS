with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "zw/3W/SHA256E-s1173596848--648abd88e88dcfb8aab3b742cde2bb6ac4f50f762480c6d0c9d62fca28afcdc9.gz/SHA256E-s1173596848--648abd88e88dcfb8aab3b742cde2bb6ac4f50f762480c6d0c9d62fca28afcdc9.gz";
      r2 = "Kz/zm/SHA256E-s1209442032--c57616d167b18275dc525976e0af236ac509a8dcec73f10b30698bfe19cbaa8f.gz/SHA256E-s1209442032--c57616d167b18275dc525976e0af236ac509a8dcec73f10b30698bfe19cbaa8f.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "9P/KQ/SHA256E-s1173645522--9d5c3114689e0de6e6c92a74b9297371df733062e304d36f5f5189285cba10f7.gz/SHA256E-s1173645522--9d5c3114689e0de6e6c92a74b9297371df733062e304d36f5f5189285cba10f7.gz";
      r2 = "Gz/Jk/SHA256E-s1213279709--d72f8874be3c05464f2f680fb387e127eec4d71c7976cec2e1958af0908c286c.gz/SHA256E-s1213279709--d72f8874be3c05464f2f680fb387e127eec4d71c7976cec2e1958af0908c286c.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "kP/w8/SHA256E-s1184174676--f5e8f687ad75c52c90c6f8b5536334780c46b0530514e8878c63298a276da8e0.gz/SHA256E-s1184174676--f5e8f687ad75c52c90c6f8b5536334780c46b0530514e8878c63298a276da8e0.gz";
      r2 = "4f/KQ/SHA256E-s1222533542--5eed01490e1c23305920226a02e711ffbc6cbb4c29d109c9bca3e5249f9e31fd.gz/SHA256E-s1222533542--5eed01490e1c23305920226a02e711ffbc6cbb4c29d109c9bca3e5249f9e31fd.gz";
    }

    {
      site = "A1";
      class = "tumours";
      pdx = false;
      r1 = "qf/fF/SHA256E-s1100377156--3232834400055bc6b382fdd515cc717da21b81f5198a235de4e872c2197af9d8.gz/SHA256E-s1100377156--3232834400055bc6b382fdd515cc717da21b81f5198a235de4e872c2197af9d8.gz";
      r2 = "Zw/3P/SHA256E-s1143402777--fc3c8ad6f913d838abff33ba33ac88f15ca924ddf5eb31fbdcdc73721db829e5.gz/SHA256E-s1143402777--fc3c8ad6f913d838abff33ba33ac88f15ca924ddf5eb31fbdcdc73721db829e5.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Gw/ZM/SHA256E-s541357255--7feed9b1eb75fdf3b0d4b7e5187dc04a7fa9c4af0816bd265480cb4507014c01.gz/SHA256E-s541357255--7feed9b1eb75fdf3b0d4b7e5187dc04a7fa9c4af0816bd265480cb4507014c01.gz";
      r2 = "J2/89/SHA256E-s552713520--b7c5e7f17572cd45fd95d2efa680ffbed1f0184f99953b548589118527bd3ff3.gz/SHA256E-s552713520--b7c5e7f17572cd45fd95d2efa680ffbed1f0184f99953b548589118527bd3ff3.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "5v/wX/SHA256E-s546685440--04ebeccfdb3c1a65c5a5c5c60084293e8c441e03e6cc1bc2db48fc23d6c472e4.gz/SHA256E-s546685440--04ebeccfdb3c1a65c5a5c5c60084293e8c441e03e6cc1bc2db48fc23d6c472e4.gz";
      r2 = "1g/61/SHA256E-s562316133--83646fc3e6531b704f7a61e277c751f91a614959e88d774f7ff7909efbcacf74.gz/SHA256E-s562316133--83646fc3e6531b704f7a61e277c751f91a614959e88d774f7ff7909efbcacf74.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "3p/Wz/SHA256E-s538163301--71b98c704fac14615b6ef6c49cc057ffd81ea93023ea12e058a372779486a5d3.gz/SHA256E-s538163301--71b98c704fac14615b6ef6c49cc057ffd81ea93023ea12e058a372779486a5d3.gz";
      r2 = "54/fM/SHA256E-s552321213--0b25905fb83e89f8e0659b0cfdd3989f0a80406c8b7ca32385c1f67d70ee35b5.gz/SHA256E-s552321213--0b25905fb83e89f8e0659b0cfdd3989f0a80406c8b7ca32385c1f67d70ee35b5.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "jq/7p/SHA256E-s593695029--bc1246800c1e46d7250683c4de3b4d6dfed7d8597fca7389859858308bd5b077.gz/SHA256E-s593695029--bc1246800c1e46d7250683c4de3b4d6dfed7d8597fca7389859858308bd5b077.gz";
      r2 = "m6/z8/SHA256E-s613944345--4695054511b10fc817c11246d4dc41a18cfa58d3c820c4506e6e2016f6b956c6.gz/SHA256E-s613944345--4695054511b10fc817c11246d4dc41a18cfa58d3c820c4506e6e2016f6b956c6.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE02";
    capture = TwistV2HR;
  }
