with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "m0/mg/SHA256E-s799736591--652a1dc7420d039b1d5dbb22dab861327bacdb2a2ecd7ef32515accc79cc48b9.gz/SHA256E-s799736591--652a1dc7420d039b1d5dbb22dab861327bacdb2a2ecd7ef32515accc79cc48b9.gz";
      r2 = "P0/p9/SHA256E-s798850851--d2be4613035ddacde80f47ed258d6251840d3e56da737c65ceea7047724f1a06.gz/SHA256E-s798850851--d2be4613035ddacde80f47ed258d6251840d3e56da737c65ceea7047724f1a06.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "mv/56/SHA256E-s831565389--513e6a8ffa871bd1ad715474b3babe9b743ed565212cf78cad0bb752af969a38.gz/SHA256E-s831565389--513e6a8ffa871bd1ad715474b3babe9b743ed565212cf78cad0bb752af969a38.gz";
      r2 = "PP/zJ/SHA256E-s832551509--8f609fb2c2592359b4a657e8344d3f81f974bb10d6b0196974a64889f9984f1c.gz/SHA256E-s832551509--8f609fb2c2592359b4a657e8344d3f81f974bb10d6b0196974a64889f9984f1c.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "z8/7x/SHA256E-s838234331--1e6287109f4e8aa5d2f0cdcebbbd455b962ce10c260ff65e4bd2cb131149fb18.gz/SHA256E-s838234331--1e6287109f4e8aa5d2f0cdcebbbd455b962ce10c260ff65e4bd2cb131149fb18.gz";
      r2 = "PX/6Z/SHA256E-s840412427--5d34f45550609224cc4f44fd2e9fe99fc3117e9cf5bafedf3dbb8e0c72da66c2.gz/SHA256E-s840412427--5d34f45550609224cc4f44fd2e9fe99fc3117e9cf5bafedf3dbb8e0c72da66c2.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "gQ/Qz/SHA256E-s847255974--0025535fa8d2c355692658cf54ca945ef2144092964c5599972cf87e78eb204c.gz/SHA256E-s847255974--0025535fa8d2c355692658cf54ca945ef2144092964c5599972cf87e78eb204c.gz";
      r2 = "Mp/xQ/SHA256E-s848791757--368b6cdfd06b9ec3ba4eabf8967856fe9a3cc3561984a3fc7b0994392408ae5b.gz/SHA256E-s848791757--368b6cdfd06b9ec3ba4eabf8967856fe9a3cc3561984a3fc7b0994392408ae5b.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "jF/Qf/SHA256E-s861739185--d7a644c463128ece4c934bf3c856a1d364aaa02e50d0f12864ba89157c7f0c33.gz/SHA256E-s861739185--d7a644c463128ece4c934bf3c856a1d364aaa02e50d0f12864ba89157c7f0c33.gz";
      r2 = "v4/fX/SHA256E-s863910230--3266d0cc8bbd4daedf9d2ee05b6de96492b98551fbd6e960623746fc979ebcb9.gz/SHA256E-s863910230--3266d0cc8bbd4daedf9d2ee05b6de96492b98551fbd6e960623746fc979ebcb9.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "PJ/5F/SHA256E-s841133190--65c2f2c2a241a83a7e8705df9b3d3033bf7321482d1de4a9c8e2d3fdc5224e2a.gz/SHA256E-s841133190--65c2f2c2a241a83a7e8705df9b3d3033bf7321482d1de4a9c8e2d3fdc5224e2a.gz";
      r2 = "2Z/GP/SHA256E-s839993584--9c597609d5ff51c478b89b0e211df688577a94d9ae85f0902de88f7392e99d43.gz/SHA256E-s839993584--9c597609d5ff51c478b89b0e211df688577a94d9ae85f0902de88f7392e99d43.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "wq/zX/SHA256E-s854693963--a08674d42895089fc065e001c7571d571e5d95f38da001294a6be56ec745a888.gz/SHA256E-s854693963--a08674d42895089fc065e001c7571d571e5d95f38da001294a6be56ec745a888.gz";
      r2 = "XF/2W/SHA256E-s856277739--80693328972047c8120162b3be669587e9039ec9fd99bf6995c7d964586daf1e.gz/SHA256E-s856277739--80693328972047c8120162b3be669587e9039ec9fd99bf6995c7d964586daf1e.gz";
    }

    {
      site = "C2";
      class = "tumours";
      pdx = false;
      r1 = "3v/6Q/SHA256E-s822371132--f3f286b90dc9a94294616712781f4ec23501cb528a9aadf8aee34331493a646d.gz/SHA256E-s822371132--f3f286b90dc9a94294616712781f4ec23501cb528a9aadf8aee34331493a646d.gz";
      r2 = "Zm/2m/SHA256E-s820302960--7dfa3904a548fd5b87722a3391e91b385d0286656af52c82131a982933c3aa03.gz/SHA256E-s820302960--7dfa3904a548fd5b87722a3391e91b385d0286656af52c82131a982933c3aa03.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "5Z/ZX/SHA256E-s794828343--fcaf6803dc1b4757e655fbace3c359157bfcbe5aeb3625f332f9967ef2995e96.gz/SHA256E-s794828343--fcaf6803dc1b4757e655fbace3c359157bfcbe5aeb3625f332f9967ef2995e96.gz";
      r2 = "KX/zp/SHA256E-s799896129--d2ab77b9d9cb2c9b4aefbdee2382659c2d78379cc2029fdea2368743a71e9057.gz/SHA256E-s799896129--d2ab77b9d9cb2c9b4aefbdee2382659c2d78379cc2029fdea2368743a71e9057.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "QQ/qZ/SHA256E-s814525399--f69a19bd547597d8ca9aeddc0ef39194143c81152282587a27d6fbb3cad51d91.gz/SHA256E-s814525399--f69a19bd547597d8ca9aeddc0ef39194143c81152282587a27d6fbb3cad51d91.gz";
      r2 = "Gw/qF/SHA256E-s818150646--4d39d3a43d99cd202a7c8661dcf1f2857b4fdadabd793de67f63d4c82345f243.gz/SHA256E-s818150646--4d39d3a43d99cd202a7c8661dcf1f2857b4fdadabd793de67f63d4c82345f243.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6J/x5/SHA256E-s821429152--87129583091dc678cdc870c36444d22a709802890f5a81e60d2c45d396709e23.gz/SHA256E-s821429152--87129583091dc678cdc870c36444d22a709802890f5a81e60d2c45d396709e23.gz";
      r2 = "j3/pw/SHA256E-s821305973--8cdca91fec335e195a74b304af2fe36cb6b2876f5ccf0e7008705e449e61fe0c.gz/SHA256E-s821305973--8cdca91fec335e195a74b304af2fe36cb6b2876f5ccf0e7008705e449e61fe0c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0035";
    typeHla = true;
    capture = TwistV2HR;
  }
