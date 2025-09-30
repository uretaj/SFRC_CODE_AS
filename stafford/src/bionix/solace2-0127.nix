with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "fF/Jp/SHA256E-s615476274--9749a5a458704fd757d713371df7db0cddff62cb53a01178793ad2ae1e6506db.gz/SHA256E-s615476274--9749a5a458704fd757d713371df7db0cddff62cb53a01178793ad2ae1e6506db.gz";
      r2 = "3g/vF/SHA256E-s614957170--37aa06ffd665dd6e9389ce388c97ae675004dca53c1283da712c80111577e56a.gz/SHA256E-s614957170--37aa06ffd665dd6e9389ce388c97ae675004dca53c1283da712c80111577e56a.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "8Q/X1/SHA256E-s630828985--3c79fce4dd5107baf027709fb644a0a463bd06ba6e0dc96078d14f890c860072.gz/SHA256E-s630828985--3c79fce4dd5107baf027709fb644a0a463bd06ba6e0dc96078d14f890c860072.gz";
      r2 = "pM/VK/SHA256E-s631686237--c06e3431f7ee4ba22e841856deb7579b4048af6560b5a3245298094235be0239.gz/SHA256E-s631686237--c06e3431f7ee4ba22e841856deb7579b4048af6560b5a3245298094235be0239.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "W1/0F/SHA256E-s632758137--590c2c1940aa9f162211314f4fe0e52795d857e1b17972522563c5e1c797da50.gz/SHA256E-s632758137--590c2c1940aa9f162211314f4fe0e52795d857e1b17972522563c5e1c797da50.gz";
      r2 = "1P/78/SHA256E-s634597994--10f8d4baaacdab148148fdc59a61b5fdf1940b02836569862ae0e26b57eca984.gz/SHA256E-s634597994--10f8d4baaacdab148148fdc59a61b5fdf1940b02836569862ae0e26b57eca984.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "q0/X4/SHA256E-s643563676--0e81719608f0f859c0f3e5d1bc02703ec99471d3e10494115416d6b611debc78.gz/SHA256E-s643563676--0e81719608f0f859c0f3e5d1bc02703ec99471d3e10494115416d6b611debc78.gz";
      r2 = "xV/6G/SHA256E-s644818569--ce3e2bf20f6aca53be40fb16c0492d3903db74c57a59af18258e2afa90ded528.gz/SHA256E-s644818569--ce3e2bf20f6aca53be40fb16c0492d3903db74c57a59af18258e2afa90ded528.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "3V/wM/SHA256E-s653170124--4e96fd1ad443b9dcf32652320ca22806003c98b92a7e3ca2c36b8969c975e03d.gz/SHA256E-s653170124--4e96fd1ad443b9dcf32652320ca22806003c98b92a7e3ca2c36b8969c975e03d.gz";
      r2 = "1Z/zM/SHA256E-s654722128--094b71a270a043d9f95329ce9219234235d9b1a800ec6b90e262e77d172410a3.gz/SHA256E-s654722128--094b71a270a043d9f95329ce9219234235d9b1a800ec6b90e262e77d172410a3.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "7p/zQ/SHA256E-s622728898--a46495fdf144e0e27ec8be389c55de9f1cfe73c23770d91c43d9e03bd7a37544.gz/SHA256E-s622728898--a46495fdf144e0e27ec8be389c55de9f1cfe73c23770d91c43d9e03bd7a37544.gz";
      r2 = "X7/gQ/SHA256E-s622122427--f6983395bdc71bbbfe8bdac2e13aac17bb78b624559dd53eff4f54c077781363.gz/SHA256E-s622122427--f6983395bdc71bbbfe8bdac2e13aac17bb78b624559dd53eff4f54c077781363.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "9X/jX/SHA256E-s645842418--d40665f08a2c072180ff1abf741d9ab8dccdf4f1ec3ca2eb06cea7311f82a934.gz/SHA256E-s645842418--d40665f08a2c072180ff1abf741d9ab8dccdf4f1ec3ca2eb06cea7311f82a934.gz";
      r2 = "1J/9k/SHA256E-s647058292--0d5398151430de0d20ee7f4442f4f37cd95fc29f6e8bc3dc26bee1bf1f678851.gz/SHA256E-s647058292--0d5398151430de0d20ee7f4442f4f37cd95fc29f6e8bc3dc26bee1bf1f678851.gz";
    }

    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "KX/2v/SHA256E-s614513619--f09da3eed87971bd49d32f6f7914dc9a705c020d462315b0c7eec35eb99e6ac5.gz/SHA256E-s614513619--f09da3eed87971bd49d32f6f7914dc9a705c020d462315b0c7eec35eb99e6ac5.gz";
      r2 = "j6/ZF/SHA256E-s613360064--c8e97d4a2fb508dcaf14f2c10a10c6752cb27df20c9a4719d651b96b3b6918f8.gz/SHA256E-s613360064--c8e97d4a2fb508dcaf14f2c10a10c6752cb27df20c9a4719d651b96b3b6918f8.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "PZ/P3/SHA256E-s1017525570--2b79b5923991a2dbb6ddc4be75a6f5f5c75aa4fd0bbdfb485a69eca2ba7bb74d.gz/SHA256E-s1017525570--2b79b5923991a2dbb6ddc4be75a6f5f5c75aa4fd0bbdfb485a69eca2ba7bb74d.gz";
      r2 = "z2/qX/SHA256E-s1014566926--e727e892caba6981967157097102ef08cd64baa85eb0fde19e6e4fe6ea97ac7e.gz/SHA256E-s1014566926--e727e892caba6981967157097102ef08cd64baa85eb0fde19e6e4fe6ea97ac7e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "4k/mW/SHA256E-s1038389788--bc247ebb0bafa6d8c22ea96ff6c37926f5e826c4f7c454b2ce0421183b7b419d.gz/SHA256E-s1038389788--bc247ebb0bafa6d8c22ea96ff6c37926f5e826c4f7c454b2ce0421183b7b419d.gz";
      r2 = "k5/1g/SHA256E-s1034010651--40131b3bbcc1032e490c40a1b5d5733a5384b11ebb9f758e9685fb73563e19a1.gz/SHA256E-s1034010651--40131b3bbcc1032e490c40a1b5d5733a5384b11ebb9f758e9685fb73563e19a1.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jX/kz/SHA256E-s1041227133--32bbb45e2bf60b3000f55ccd651d62fda4c2d045d99b63df7e5a5e5d7d3e1416.gz/SHA256E-s1041227133--32bbb45e2bf60b3000f55ccd651d62fda4c2d045d99b63df7e5a5e5d7d3e1416.gz";
      r2 = "Xk/ff/SHA256E-s1032508609--cbc0b768edb0e141353a309857c4c96a8184d494c4cd73d3f4fce5e471551610.gz/SHA256E-s1032508609--cbc0b768edb0e141353a309857c4c96a8184d494c4cd73d3f4fce5e471551610.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0127";
    typeHla = true;
    capture = TwistV2HR;
  }
