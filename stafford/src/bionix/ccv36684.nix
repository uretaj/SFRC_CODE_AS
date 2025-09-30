with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Vx/74/SHA256E-s3345994897--6ecafc4312aca29c9ffe4e993045ae7b924216784aa23aa87bdae5cc47937e88.gz/SHA256E-s3345994897--6ecafc4312aca29c9ffe4e993045ae7b924216784aa23aa87bdae5cc47937e88.gz";
      r2 = "7W/wp/SHA256E-s3404072287--9cbe4e4b6d16fdd47609a449b9420e50b8cefb360a3e8f11536d0020f75385f3.gz/SHA256E-s3404072287--9cbe4e4b6d16fdd47609a449b9420e50b8cefb360a3e8f11536d0020f75385f3.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "M8/qq/SHA256E-s3389336225--f1d9db2f4a0b74b5b4d6bec003232923a50f0b8d2562757200a7298072e2944c.gz/SHA256E-s3389336225--f1d9db2f4a0b74b5b4d6bec003232923a50f0b8d2562757200a7298072e2944c.gz";
      r2 = "24/mz/SHA256E-s3448699998--9b0f3789160358872bacd4c44494ac791c5ae7962a75a4a3472bc40e5b92c33d.gz/SHA256E-s3448699998--9b0f3789160358872bacd4c44494ac791c5ae7962a75a4a3472bc40e5b92c33d.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV36684";
  }
