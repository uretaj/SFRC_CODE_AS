with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "kq/w0/SHA256E-s662533526--0e90696d6ad0011dc6ad5d9285448a323c656d2fb1bb9c0a0982e5b6c93b3bee.gz/SHA256E-s662533526--0e90696d6ad0011dc6ad5d9285448a323c656d2fb1bb9c0a0982e5b6c93b3bee.gz";
      r2 = "M9/PW/SHA256E-s665636179--06b0aa878dea33258fb405f12eed4df6e17e027b42f5f5415e6b86e34a88670b.gz/SHA256E-s665636179--06b0aa878dea33258fb405f12eed4df6e17e027b42f5f5415e6b86e34a88670b.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "pm/vf/SHA256E-s690591321--4887c3f53f0d44361e6f4061d47a0624dde025da5853a9317e580edfe0c8946b.gz/SHA256E-s690591321--4887c3f53f0d44361e6f4061d47a0624dde025da5853a9317e580edfe0c8946b.gz";
      r2 = "6v/JJ/SHA256E-s695583519--f620ca774079fb205cc6beca60f069fd60cc2ed473c4402ba5a55e829dd07cda.gz/SHA256E-s695583519--f620ca774079fb205cc6beca60f069fd60cc2ed473c4402ba5a55e829dd07cda.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "64/zv/SHA256E-s693461546--e894993a69c8ce7de10b24bba07e523a5fb656c418985df529c1aed0ae15ae7b.gz/SHA256E-s693461546--e894993a69c8ce7de10b24bba07e523a5fb656c418985df529c1aed0ae15ae7b.gz";
      r2 = "mJ/6W/SHA256E-s699486810--a066639a0b96418ef7c05b4b710febdd18f801327f03c3694c94fc2bfbb1afd7.gz/SHA256E-s699486810--a066639a0b96418ef7c05b4b710febdd18f801327f03c3694c94fc2bfbb1afd7.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "8x/kJ/SHA256E-s698374337--7d15f806036439d6ff38b63465028f3c481b4f584c446a2618f604b966a6e9db.gz/SHA256E-s698374337--7d15f806036439d6ff38b63465028f3c481b4f584c446a2618f604b966a6e9db.gz";
      r2 = "9q/Gk/SHA256E-s703845992--466cb9b5f736e04c64a884b6ba20b6463520f91a46e241630f745e9c4070a86d.gz/SHA256E-s703845992--466cb9b5f736e04c64a884b6ba20b6463520f91a46e241630f745e9c4070a86d.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "wq/M6/SHA256E-s709866593--3c049ee19985de47096aa3f10cbb4ea4510f0b6da440c008136077492c348a7c.gz/SHA256E-s709866593--3c049ee19985de47096aa3f10cbb4ea4510f0b6da440c008136077492c348a7c.gz";
      r2 = "5F/81/SHA256E-s715779747--556c87fddcb4afeddf2a70a56b966dfd7d7c69e5ae399cf89b161d37b149fb94.gz/SHA256E-s715779747--556c87fddcb4afeddf2a70a56b966dfd7d7c69e5ae399cf89b161d37b149fb94.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "GX/84/SHA256E-s704818260--d5fd72e916814082357c5f88a09f85d0cf079a2b4c37e6421f88a110eb4c0b17.gz/SHA256E-s704818260--d5fd72e916814082357c5f88a09f85d0cf079a2b4c37e6421f88a110eb4c0b17.gz";
      r2 = "Mv/fz/SHA256E-s707982932--46a2b528b976fd9425c1af5db40fd66b0742afac4343d9f4dc3cd2b12aff455f.gz/SHA256E-s707982932--46a2b528b976fd9425c1af5db40fd66b0742afac4343d9f4dc3cd2b12aff455f.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "Qx/4z/SHA256E-s707331320--a474fe45c858165782f7a2febc3237ae2d122e5a5e087438cd159b021eccec95.gz/SHA256E-s707331320--a474fe45c858165782f7a2febc3237ae2d122e5a5e087438cd159b021eccec95.gz";
      r2 = "2k/Vx/SHA256E-s712810229--02bcb1ad52738238146635f738dac43050e93948d3ea7e278da4e9eb02fa2c7b.gz/SHA256E-s712810229--02bcb1ad52738238146635f738dac43050e93948d3ea7e278da4e9eb02fa2c7b.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "VM/fj/SHA256E-s687461326--04ee21f5652bae34c04ed43451d51b397ce4b858baf99489f83532030c1a8e7b.gz/SHA256E-s687461326--04ee21f5652bae34c04ed43451d51b397ce4b858baf99489f83532030c1a8e7b.gz";
      r2 = "mf/kP/SHA256E-s689568042--4bd74b43e37ee6a9bb3128d8dbfa89becaf968a301097cbb771d6d18bcf684f6.gz/SHA256E-s689568042--4bd74b43e37ee6a9bb3128d8dbfa89becaf968a301097cbb771d6d18bcf684f6.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5P/PW/SHA256E-s547203133--eb8d8d94179ea7d9cb3845d2ed47de9d0c56a429b83f7763cfc8535a11ce98d9.gz/SHA256E-s547203133--eb8d8d94179ea7d9cb3845d2ed47de9d0c56a429b83f7763cfc8535a11ce98d9.gz";
      r2 = "5f/8W/SHA256E-s555660352--66d30664c647c8af5207749617c59155d835473c65becfbca458540b3dba4c73.gz/SHA256E-s555660352--66d30664c647c8af5207749617c59155d835473c65becfbca458540b3dba4c73.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jx/mZ/SHA256E-s553014636--4abb5e1f678c7558eaecaaa5fbc63d473ddbd00c122e149e40270b7449893bc6.gz/SHA256E-s553014636--4abb5e1f678c7558eaecaaa5fbc63d473ddbd00c122e149e40270b7449893bc6.gz";
      r2 = "j1/x9/SHA256E-s565322543--60f67190f06ed09781ba3a8add4f7a3cb6642d5d72ea109361bafcdb93e40d33.gz/SHA256E-s565322543--60f67190f06ed09781ba3a8add4f7a3cb6642d5d72ea109361bafcdb93e40d33.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "PF/Q3/SHA256E-s547439163--d8464fdfd3a116426438d32cd308f67ad719fbb93a386a64cc895cba257011c3.gz/SHA256E-s547439163--d8464fdfd3a116426438d32cd308f67ad719fbb93a386a64cc895cba257011c3.gz";
      r2 = "02/77/SHA256E-s558297469--7f97c30f2646b85563216c1ac6c08bed590e1f64ef54f83bb6017d49ff070990.gz/SHA256E-s558297469--7f97c30f2646b85563216c1ac6c08bed590e1f64ef54f83bb6017d49ff070990.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "v5/pG/SHA256E-s596527717--ca583360f3074d3cf1fed3e0e2b050cd2a78396b600fbcc755d24c71918c17b2.gz/SHA256E-s596527717--ca583360f3074d3cf1fed3e0e2b050cd2a78396b600fbcc755d24c71918c17b2.gz";
      r2 = "fJ/21/SHA256E-s613183393--e03e5d02dcdf6a04573eca10fc05b1091be1b9f3477bf0836858bb537746a445.gz/SHA256E-s613183393--e03e5d02dcdf6a04573eca10fc05b1091be1b9f3477bf0836858bb537746a445.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0119";
    typeHla = true;
    capture = TwistV2HR;
  }
