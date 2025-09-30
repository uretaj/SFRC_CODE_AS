with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "kg/10/SHA256E-s376825169--f217a2992fb4b53d448d5cee865800a4e38a46cbd673c76028a1ede9ae3d240e.gz/SHA256E-s376825169--f217a2992fb4b53d448d5cee865800a4e38a46cbd673c76028a1ede9ae3d240e.gz";
      r2 = "zP/PK/SHA256E-s383592134--0d027ebd191ea73f109e9f9e5337a53f391a1da32d92ee66f307f948b1a1ee2f.gz/SHA256E-s383592134--0d027ebd191ea73f109e9f9e5337a53f391a1da32d92ee66f307f948b1a1ee2f.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "kJ/5w/SHA256E-s389815774--f3188d203a676a8c7a35629b43a7b126c90bfcb0a0d7166e4aa61390c797381b.gz/SHA256E-s389815774--f3188d203a676a8c7a35629b43a7b126c90bfcb0a0d7166e4aa61390c797381b.gz";
      r2 = "Q4/75/SHA256E-s397879207--3e562693e00b885b73dfc724e120ad434c36dbb0a97a11960b9f93487cc06cc3.gz/SHA256E-s397879207--3e562693e00b885b73dfc724e120ad434c36dbb0a97a11960b9f93487cc06cc3.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "P0/x6/SHA256E-s390990369--6ecab33027b7ff377da505d75edd74a4e6b8bb46df8d6ca5e2a31ec0e6734a35.gz/SHA256E-s390990369--6ecab33027b7ff377da505d75edd74a4e6b8bb46df8d6ca5e2a31ec0e6734a35.gz";
      r2 = "WV/gQ/SHA256E-s399540205--3f5df965fa67c49e778aa3abdb3d77071bee68664d58391f6970514242ead54e.gz/SHA256E-s399540205--3f5df965fa67c49e778aa3abdb3d77071bee68664d58391f6970514242ead54e.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "mF/vM/SHA256E-s388356153--4ae8fa6479092ec4f5e53a04e3306b4cb195c2d10dd230ae46f30e433ca684e3.gz/SHA256E-s388356153--4ae8fa6479092ec4f5e53a04e3306b4cb195c2d10dd230ae46f30e433ca684e3.gz";
      r2 = "MX/2G/SHA256E-s396334210--87e0dbc868f724b384eedb31753add830d4f6db592cd6e73173907bbca093597.gz/SHA256E-s396334210--87e0dbc868f724b384eedb31753add830d4f6db592cd6e73173907bbca093597.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "w3/71/SHA256E-s397774386--21f478f36631bca3e311f3ed47b3fc9538ef8842d665e663e855fa61c6a8934c.gz/SHA256E-s397774386--21f478f36631bca3e311f3ed47b3fc9538ef8842d665e663e855fa61c6a8934c.gz";
      r2 = "PP/kJ/SHA256E-s406223572--5dc6786cdb82a5546c6dd1e19c132a9b2af12785e444260219c885d12320ad68.gz/SHA256E-s406223572--5dc6786cdb82a5546c6dd1e19c132a9b2af12785e444260219c885d12320ad68.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "7J/gM/SHA256E-s404002769--11491366253dab6582cccd7433b138316b944378b770d65be005f8e7fd921eb1.gz/SHA256E-s404002769--11491366253dab6582cccd7433b138316b944378b770d65be005f8e7fd921eb1.gz";
      r2 = "Fk/5V/SHA256E-s411102852--d490baf41a1356d673eb26c3e4700c870dbf2d643cee457227f410b7092933a2.gz/SHA256E-s411102852--d490baf41a1356d673eb26c3e4700c870dbf2d643cee457227f410b7092933a2.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "Q5/8V/SHA256E-s397037133--b90608c35b391d33dfa3225d460ad725a94299a73d967d5f750112696090657a.gz/SHA256E-s397037133--b90608c35b391d33dfa3225d460ad725a94299a73d967d5f750112696090657a.gz";
      r2 = "GX/jv/SHA256E-s405305592--2fc818056b90c18dcb0b7d551c849ba6ed80b03849b69f64bb3c048326c9b14e.gz/SHA256E-s405305592--2fc818056b90c18dcb0b7d551c849ba6ed80b03849b69f64bb3c048326c9b14e.gz";
    }

    {
      site = "B4";
      class = "tumours";
      pdx = false;
      r1 = "2f/3G/SHA256E-s396158789--cba56c4617c5d799750c59cfba5e016b87f1e74f993f101bf44c7e5e8af42342.gz/SHA256E-s396158789--cba56c4617c5d799750c59cfba5e016b87f1e74f993f101bf44c7e5e8af42342.gz";
      r2 = "2X/4W/SHA256E-s402468832--fef30c35580c44e9c7203039c24246eeaaddf6a0bc414aba5bee3fe6660a9985.gz/SHA256E-s402468832--fef30c35580c44e9c7203039c24246eeaaddf6a0bc414aba5bee3fe6660a9985.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Vv/M0/SHA256E-s696857182--0fd64a4bcec5c17f7b61227798ecd26e7bce9af24b390213b90729e1aa23bbbc.gz/SHA256E-s696857182--0fd64a4bcec5c17f7b61227798ecd26e7bce9af24b390213b90729e1aa23bbbc.gz";
      r2 = "Wj/K8/SHA256E-s696774667--a88de4408e653d97870e9c13f1c4172f2514880cbe33e8bb8e56523a425b9b56.gz/SHA256E-s696774667--a88de4408e653d97870e9c13f1c4172f2514880cbe33e8bb8e56523a425b9b56.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "P2/q2/SHA256E-s699927826--5a63cb500c61567d328a41640b684782e4ae657fdd04d01726f9ce67f77a3aca.gz/SHA256E-s699927826--5a63cb500c61567d328a41640b684782e4ae657fdd04d01726f9ce67f77a3aca.gz";
      r2 = "J1/1P/SHA256E-s704065547--7e1fbf9300777afa79b3cf1e0f75394ef6bb53934088e153d7f2e448e63cb3f7.gz/SHA256E-s704065547--7e1fbf9300777afa79b3cf1e0f75394ef6bb53934088e153d7f2e448e63cb3f7.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "kF/G3/SHA256E-s692399815--8f6531f775310ba5b03a08b16e0ea405c61b100e2057b1a25bf0a9e16de1d460.gz/SHA256E-s692399815--8f6531f775310ba5b03a08b16e0ea405c61b100e2057b1a25bf0a9e16de1d460.gz";
      r2 = "p4/qg/SHA256E-s694623741--b2ef494bf1a5388bd098fd146c3ca551a6b9705a2f6b3c9b7e1f0cc5ec7f29d6.gz/SHA256E-s694623741--b2ef494bf1a5388bd098fd146c3ca551a6b9705a2f6b3c9b7e1f0cc5ec7f29d6.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Wz/5x/SHA256E-s734374336--e00f25b380cb83bba3e26d604f9b2645eb0ae4068d41bb1b505fcb051ebc426b.gz/SHA256E-s734374336--e00f25b380cb83bba3e26d604f9b2645eb0ae4068d41bb1b505fcb051ebc426b.gz";
      r2 = "4x/mG/SHA256E-s741300545--efe6337d59b646d9ed98a7c731eb3f43b15dabfe16c21736b1e00df31a787334.gz/SHA256E-s741300545--efe6337d59b646d9ed98a7c731eb3f43b15dabfe16c21736b1e00df31a787334.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE11";
    capture = TwistV2HR;
  }
