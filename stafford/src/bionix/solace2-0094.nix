with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "wJ/j7/SHA256E-s4006103044--1dbf146bc783cae31d32ede425be19d993e81405bbad46a64f8b0964a98b4913.gz/SHA256E-s4006103044--1dbf146bc783cae31d32ede425be19d993e81405bbad46a64f8b0964a98b4913.gz";
      r2 = "5x/fw/SHA256E-s4053164299--6ea0884b251605312880084950c7cf036750f712a0ddd2d88b6675571699afd8.gz/SHA256E-s4053164299--6ea0884b251605312880084950c7cf036750f712a0ddd2d88b6675571699afd8.gz";
    }

    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "Gz/x6/SHA256E-s4020237947--38d166440800561321069a1187f7b0055e5b3f582173d8c4254296c3af6260cb.gz/SHA256E-s4020237947--38d166440800561321069a1187f7b0055e5b3f582173d8c4254296c3af6260cb.gz";
      r2 = "Qm/QJ/SHA256E-s4050576805--89026eecca9789482f91af6ea3b30faee382374a16ee0608fff090f6583aa74f.gz/SHA256E-s4050576805--89026eecca9789482f91af6ea3b30faee382374a16ee0608fff090f6583aa74f.gz";
    }

    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "JF/9W/SHA256E-s4011015343--0ad5d500da9dd58b2d2d1579ca36a4317542111d783617783105261bda06ac40.gz/SHA256E-s4011015343--0ad5d500da9dd58b2d2d1579ca36a4317542111d783617783105261bda06ac40.gz";
      r2 = "gV/Wp/SHA256E-s4029053281--e698889ee034949934098dece6481cf456c97ce8b35df4077819c7480f19716f.gz/SHA256E-s4029053281--e698889ee034949934098dece6481cf456c97ce8b35df4077819c7480f19716f.gz";
    }

    {
      site = "8A";
      class = "tumours";
      pdx = false;
      r1 = "66/Z7/SHA256E-s3974410678--15f9723553b5af2ace5b0a607227972c4bb296e24fda7040a61ca1aa5e11d912.gz/SHA256E-s3974410678--15f9723553b5af2ace5b0a607227972c4bb296e24fda7040a61ca1aa5e11d912.gz";
      r2 = "22/w9/SHA256E-s3992541536--e0050fb967aaa09ec75c828d1ffcf5cd944d8ce8d14ad2241035f0ba28ae43f6.gz/SHA256E-s3992541536--e0050fb967aaa09ec75c828d1ffcf5cd944d8ce8d14ad2241035f0ba28ae43f6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "9j/v6/SHA256E-s1106993382--a499102855c313174b2cf30e7f7a03bdae1e3a35a0c442626f13bbb9cb98bde8.gz/SHA256E-s1106993382--a499102855c313174b2cf30e7f7a03bdae1e3a35a0c442626f13bbb9cb98bde8.gz";
      r2 = "VK/MQ/SHA256E-s1111571693--d325f70cf147385305d51a1c43929258b4a028bfe76f26fdcead9d3f068e0855.gz/SHA256E-s1111571693--d325f70cf147385305d51a1c43929258b4a028bfe76f26fdcead9d3f068e0855.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Gq/kq/SHA256E-s1114347075--b7880efb9ddc38155f65d2565c95e181f0f3ddae1c47d0370f1fc1c6d94f18ad.gz/SHA256E-s1114347075--b7880efb9ddc38155f65d2565c95e181f0f3ddae1c47d0370f1fc1c6d94f18ad.gz";
      r2 = "75/Ww/SHA256E-s1117353644--683e9e39b79bfdc9c455b15dcc640f40bfe0d7e50c14d35eaa5840d4e70979f2.gz/SHA256E-s1117353644--683e9e39b79bfdc9c455b15dcc640f40bfe0d7e50c14d35eaa5840d4e70979f2.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kP/5V/SHA256E-s1110027339--6b8e83513a27f1a6e36ebd85486203079931b9c06e9af8f9be0608e64acde6bd.gz/SHA256E-s1110027339--6b8e83513a27f1a6e36ebd85486203079931b9c06e9af8f9be0608e64acde6bd.gz";
      r2 = "zj/F2/SHA256E-s1108170316--76fc0653330f0dbf0e47c2a14ebea7d38fd5865719734ed9598656310b975e78.gz/SHA256E-s1108170316--76fc0653330f0dbf0e47c2a14ebea7d38fd5865719734ed9598656310b975e78.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0094";
    typeHla = true;
    capture = TwistV2HR;
  }
