with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "05/72/SHA256E-s503185162--4c3461ebce08349132ff1f6b8e41b92a19f688d8df7684378015a4abbb776fe2.gz/SHA256E-s503185162--4c3461ebce08349132ff1f6b8e41b92a19f688d8df7684378015a4abbb776fe2.gz";
      r2 = "Q7/21/SHA256E-s501540101--588ca843d376aebc666b6713e12e4afb66c94f2853c7184a40d3615107c99e76.gz/SHA256E-s501540101--588ca843d376aebc666b6713e12e4afb66c94f2853c7184a40d3615107c99e76.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "Zg/05/SHA256E-s524621227--97eb009a5344d1678393012c0782cb3bd91b6482d9557cca4167bc3b30da06f9.gz/SHA256E-s524621227--97eb009a5344d1678393012c0782cb3bd91b6482d9557cca4167bc3b30da06f9.gz";
      r2 = "K7/pk/SHA256E-s524014952--032388885afb1ef2613f5dc743a1e63cf635934e8df72a30087eec87ec5cf2f6.gz/SHA256E-s524014952--032388885afb1ef2613f5dc743a1e63cf635934e8df72a30087eec87ec5cf2f6.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "50/Xg/SHA256E-s528059689--26d4eb21f7f9447ef8a2ec091753fcf4ab6efafb82e729c7b469284a248716ba.gz/SHA256E-s528059689--26d4eb21f7f9447ef8a2ec091753fcf4ab6efafb82e729c7b469284a248716ba.gz";
      r2 = "96/69/SHA256E-s528145155--1a8a6f561a69ed2a4660ba5dc373ae8f76b3e7b16976b5de1b74da65daca8643.gz/SHA256E-s528145155--1a8a6f561a69ed2a4660ba5dc373ae8f76b3e7b16976b5de1b74da65daca8643.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "07/2Q/SHA256E-s533947105--ca51767cccd5c325921fa88f9a9abfcb21983813a68acb6738a7be7ce6dbeb4e.gz/SHA256E-s533947105--ca51767cccd5c325921fa88f9a9abfcb21983813a68acb6738a7be7ce6dbeb4e.gz";
      r2 = "8j/5x/SHA256E-s533555175--21c2e97fe1134b4bdf7a1eab537fa4713bc7bfe625d495fbfd79a2615a062d94.gz/SHA256E-s533555175--21c2e97fe1134b4bdf7a1eab537fa4713bc7bfe625d495fbfd79a2615a062d94.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "47/GQ/SHA256E-s545676696--083895b31a6432e8c4152d7d98b9732a8dd82670dca658ba74f3494910ee517b.gz/SHA256E-s545676696--083895b31a6432e8c4152d7d98b9732a8dd82670dca658ba74f3494910ee517b.gz";
      r2 = "0X/1m/SHA256E-s545543383--2ab635c26f2f3b685d27a6391a0bafcbe0054f23a3df31b0c64692e5523bd162.gz/SHA256E-s545543383--2ab635c26f2f3b685d27a6391a0bafcbe0054f23a3df31b0c64692e5523bd162.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "xg/6W/SHA256E-s530072324--f93852ae31af359cbfd3759f1ef05b34b5f518184f1b615bc035c8248bff7c6f.gz/SHA256E-s530072324--f93852ae31af359cbfd3759f1ef05b34b5f518184f1b615bc035c8248bff7c6f.gz";
      r2 = "gw/gm/SHA256E-s528054928--4b935646a0db2f849e49c1eb809399ccc9e838b93454e6062cdf67e2fb0159e7.gz/SHA256E-s528054928--4b935646a0db2f849e49c1eb809399ccc9e838b93454e6062cdf67e2fb0159e7.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "1x/g9/SHA256E-s541720219--9d3c3ccb19e44915595f35a8c3ebad46c29d779dd9eb2988c40e7c34f788c461.gz/SHA256E-s541720219--9d3c3ccb19e44915595f35a8c3ebad46c29d779dd9eb2988c40e7c34f788c461.gz";
      r2 = "9g/VK/SHA256E-s541244611--3218ce951d9c8fb1d1fd6f84fe92731792f7ea053e55cdbacd2446403123f397.gz/SHA256E-s541244611--3218ce951d9c8fb1d1fd6f84fe92731792f7ea053e55cdbacd2446403123f397.gz";
    }

    {
      site = "B29";
      class = "tumours";
      pdx = false;
      r1 = "pM/87/SHA256E-s517590574--9a5d63d21e4ff49eeeea74da6597a6a5cde9d20fa3eae13dd089daae9535b2be.gz/SHA256E-s517590574--9a5d63d21e4ff49eeeea74da6597a6a5cde9d20fa3eae13dd089daae9535b2be.gz";
      r2 = "89/kw/SHA256E-s515084257--37d1f3521bf3b91c91ebeb73f8d9827f464e5b1cfec853475e72fdbc97b7f953.gz/SHA256E-s515084257--37d1f3521bf3b91c91ebeb73f8d9827f464e5b1cfec853475e72fdbc97b7f953.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "FW/mw/SHA256E-s1022980778--5afb86b3a60636a6a48502bceab78a04a3e05be8812ef21cc72f4f0ce07dde61.gz/SHA256E-s1022980778--5afb86b3a60636a6a48502bceab78a04a3e05be8812ef21cc72f4f0ce07dde61.gz";
      r2 = "Mx/MQ/SHA256E-s1026887178--247aab658d5aad259df7a64c5d92530696765e341b481c817b0e6cec130534b5.gz/SHA256E-s1026887178--247aab658d5aad259df7a64c5d92530696765e341b481c817b0e6cec130534b5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kW/8G/SHA256E-s1040434138--462d760601446064b35a0e419a6a500c3ca99bc1c391af0528e03e568eaf089b.gz/SHA256E-s1040434138--462d760601446064b35a0e419a6a500c3ca99bc1c391af0528e03e568eaf089b.gz";
      r2 = "Q1/1j/SHA256E-s1042930866--1b381b5ce97162feb4319d4ce526098cb594969c413793b4fe90a053d28a0da9.gz/SHA256E-s1042930866--1b381b5ce97162feb4319d4ce526098cb594969c413793b4fe90a053d28a0da9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "FP/jj/SHA256E-s1045635086--d7ce671069f768951afdec7ed0e62806dbdaa45ca05b58e85ff75b2d3e4b4b5b.gz/SHA256E-s1045635086--d7ce671069f768951afdec7ed0e62806dbdaa45ca05b58e85ff75b2d3e4b4b5b.gz";
      r2 = "JJ/k4/SHA256E-s1043548387--a623eda9db3ae68d971124ee6a71bd62cf906739f2e05e0d19e48d9ec0e855c8.gz/SHA256E-s1043548387--a623eda9db3ae68d971124ee6a71bd62cf906739f2e05e0d19e48d9ec0e855c8.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0133";
    typeHla = true;
    capture = TwistV2HR;
  }
