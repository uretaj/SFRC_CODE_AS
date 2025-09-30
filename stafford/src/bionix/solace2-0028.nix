with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "zM/VK/SHA256E-s538758202--2654f228403da5686af024b36e9387bc1efe9ea2953573ac28c40a3d3b83b608.gz/SHA256E-s538758202--2654f228403da5686af024b36e9387bc1efe9ea2953573ac28c40a3d3b83b608.gz";
      r2 = "Vf/PM/SHA256E-s543154635--201a11ca0da902c9567672b1b447079cc4f010a1bd210c0bf50695a5c076acdc.gz/SHA256E-s543154635--201a11ca0da902c9567672b1b447079cc4f010a1bd210c0bf50695a5c076acdc.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "gX/74/SHA256E-s557310045--cfbafa437f2617e3c54942e2ff164cfaebb7a5e9e77421cde1992609e7e8da1e.gz/SHA256E-s557310045--cfbafa437f2617e3c54942e2ff164cfaebb7a5e9e77421cde1992609e7e8da1e.gz";
      r2 = "7g/6G/SHA256E-s563234165--1b256d671c9fa9f9d850724c7623bfb8eec749695ec6893d614b840d143a42b2.gz/SHA256E-s563234165--1b256d671c9fa9f9d850724c7623bfb8eec749695ec6893d614b840d143a42b2.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "0j/z1/SHA256E-s558691246--ad4f998a6f8cf756b81d080a2008560ca44146d76511616f7266a63a28f1b430.gz/SHA256E-s558691246--ad4f998a6f8cf756b81d080a2008560ca44146d76511616f7266a63a28f1b430.gz";
      r2 = "Kg/9f/SHA256E-s565400980--3cd1463dabf053415cf900ac08e6caa49e69347d929f2bde49047f46fc66db9f.gz/SHA256E-s565400980--3cd1463dabf053415cf900ac08e6caa49e69347d929f2bde49047f46fc66db9f.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "mk/W7/SHA256E-s559233402--9cd591e4b81e6e830dced085b3e21dfcc28b1ee904838ca40e9bad9a63987a0c.gz/SHA256E-s559233402--9cd591e4b81e6e830dced085b3e21dfcc28b1ee904838ca40e9bad9a63987a0c.gz";
      r2 = "x7/MG/SHA256E-s565298247--af651b34bda88155d304521fedc92446611720d3a223be1518f3223fef2665b9.gz/SHA256E-s565298247--af651b34bda88155d304521fedc92446611720d3a223be1518f3223fef2665b9.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "M5/gJ/SHA256E-s570782677--ea284bd3de8154e6d921baa4793047c0e8ae05a143d0ac098b4a33bd75f1eeaa.gz/SHA256E-s570782677--ea284bd3de8154e6d921baa4793047c0e8ae05a143d0ac098b4a33bd75f1eeaa.gz";
      r2 = "Qg/Wf/SHA256E-s577228366--33f9651dc702c821eeaa12cfbf4db62c539b9690d4f967699ef298ec9fcf5bb2.gz/SHA256E-s577228366--33f9651dc702c821eeaa12cfbf4db62c539b9690d4f967699ef298ec9fcf5bb2.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "gq/W6/SHA256E-s570601792--98ee103e90e749cf48c67672c85be490077ce28c23fce89a581fd0e349840e14.gz/SHA256E-s570601792--98ee103e90e749cf48c67672c85be490077ce28c23fce89a581fd0e349840e14.gz";
      r2 = "vK/z8/SHA256E-s574995325--107a6b5912b8af59a541965f415a4243fd229513593ad6dec89642b506bc563c.gz/SHA256E-s574995325--107a6b5912b8af59a541965f415a4243fd229513593ad6dec89642b506bc563c.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "KW/Q5/SHA256E-s569524586--eabc1b6c3ce24e2bf64cd650d7c20b71bcc739fb3b21c0390cbf8a0494acb154.gz/SHA256E-s569524586--eabc1b6c3ce24e2bf64cd650d7c20b71bcc739fb3b21c0390cbf8a0494acb154.gz";
      r2 = "5M/M5/SHA256E-s575663125--497a29ba1c8ceaa1bafeca09c8d154957e086012ee4f39616300fb8c912ca72d.gz/SHA256E-s575663125--497a29ba1c8ceaa1bafeca09c8d154957e086012ee4f39616300fb8c912ca72d.gz";
    }

    {
      site = "A3";
      class = "tumours";
      pdx = false;
      r1 = "w7/1V/SHA256E-s558873622--7b645557ab4497a7414c43e3998d17b1f408c5defc86e60d479a63123c4edb91.gz/SHA256E-s558873622--7b645557ab4497a7414c43e3998d17b1f408c5defc86e60d479a63123c4edb91.gz";
      r2 = "WM/z7/SHA256E-s562400824--94de7300c26be01c1bb8a62931cad6bda624ee1e8147b4bd45252009c090cf25.gz/SHA256E-s562400824--94de7300c26be01c1bb8a62931cad6bda624ee1e8147b4bd45252009c090cf25.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6V/17/SHA256E-s1236760199--ef988fbee1ddb2402d01deadc2f73522d8b51424e8cfefae300dc053af14de1b.gz/SHA256E-s1236760199--ef988fbee1ddb2402d01deadc2f73522d8b51424e8cfefae300dc053af14de1b.gz";
      r2 = "wM/4K/SHA256E-s1233084187--d6da66e38697d92de3143f092ff10b67b42fb0943e5c81d1479f4be08e7d7df3.gz/SHA256E-s1233084187--d6da66e38697d92de3143f092ff10b67b42fb0943e5c81d1479f4be08e7d7df3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pZ/wJ/SHA256E-s1253604485--65594a0972b21220a1afa190082006d024b4eb4b8222a28109659ad187952c59.gz/SHA256E-s1253604485--65594a0972b21220a1afa190082006d024b4eb4b8222a28109659ad187952c59.gz";
      r2 = "4q/MM/SHA256E-s1248709699--a859a53d9e7581d25fc3877008b856a9767bd4e4dd12fa7e05347591f6e59a66.gz/SHA256E-s1248709699--a859a53d9e7581d25fc3877008b856a9767bd4e4dd12fa7e05347591f6e59a66.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k3/pv/SHA256E-s1246942791--26aaaf0a59ad8cdbfd3e6363a091447173b464dcee17435755a5d9136b7a5cb9.gz/SHA256E-s1246942791--26aaaf0a59ad8cdbfd3e6363a091447173b464dcee17435755a5d9136b7a5cb9.gz";
      r2 = "23/km/SHA256E-s1237072685--b6acd828334594b6a08c06d4cb3150271f547b0743d5c92a37efc5ffaf7196ca.gz/SHA256E-s1237072685--b6acd828334594b6a08c06d4cb3150271f547b0743d5c92a37efc5ffaf7196ca.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0028";
    typeHla = true;
    capture = TwistV2HR;
  }
