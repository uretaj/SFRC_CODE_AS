with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "3M/F8/SHA256E-s4062833273--8ceecc634283db8a66851a7edac99576b8c5988fd93a55f359613b244918bd3c.gz/SHA256E-s4062833273--8ceecc634283db8a66851a7edac99576b8c5988fd93a55f359613b244918bd3c.gz";
      r2 = "JK/xW/SHA256E-s3965566106--4daa34dad634c77aca5adc06ed379423434935f49f1542171f3c8eac0be8d6a6.gz/SHA256E-s3965566106--4daa34dad634c77aca5adc06ed379423434935f49f1542171f3c8eac0be8d6a6.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "QQ/FP/SHA256E-s1507558167--a85c6e29c94dbf7f063ca5b2becbca0c71b31007476bcfcf560aabd92b95dcda.gz/SHA256E-s1507558167--a85c6e29c94dbf7f063ca5b2becbca0c71b31007476bcfcf560aabd92b95dcda.gz";
      r2 = "fM/q2/SHA256E-s1613141405--bea8fd364c14a8a5510fe9729692fd06154f0bd1420ac9406ccd563ea58bc424.gz/SHA256E-s1613141405--bea8fd364c14a8a5510fe9729692fd06154f0bd1420ac9406ccd563ea58bc424.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "jj/p1/SHA256E-s17309465096--a638d36ad0362c971cb6eb15d01dc851d85c22c3b7240b8c0d805bc0db43b139.gz/SHA256E-s17309465096--a638d36ad0362c971cb6eb15d01dc851d85c22c3b7240b8c0d805bc0db43b139.gz";
      r2 = "ZV/kf/SHA256E-s15958643168--5bcd60deee84b3448a96cf9d444d9768e33eae9805ff5ed6a3ed32775d3d2e19.gz/SHA256E-s15958643168--5bcd60deee84b3448a96cf9d444d9768e33eae9805ff5ed6a3ed32775d3d2e19.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "VP/Gk/SHA256E-s7273815688--9d786374b649a5f3af54197054384c2dde90a72fb014c6acffb3ac24476eb376.gz/SHA256E-s7273815688--9d786374b649a5f3af54197054384c2dde90a72fb014c6acffb3ac24476eb376.gz";
      r2 = "2P/FV/SHA256E-s7461545317--0b6a69b85976153f5c8791facebfc0aecb7baffee30a2276e4b0303ebdc70d1c.gz/SHA256E-s7461545317--0b6a69b85976153f5c8791facebfc0aecb7baffee30a2276e4b0303ebdc70d1c.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0011";
  }
