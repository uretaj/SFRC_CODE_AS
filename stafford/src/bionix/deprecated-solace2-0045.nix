with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "55/JJ/SHA256E-s4111481240--4dcc36a0322500a4f546241038b2a1fda1f35e465417fc1d90505bcc4c86566d.gz/SHA256E-s4111481240--4dcc36a0322500a4f546241038b2a1fda1f35e465417fc1d90505bcc4c86566d.gz";
      r2 = "k2/K6/SHA256E-s3989867029--e11668fb4e0fa5584648f855a33375189c57b4c261aae9e5df84efa6de5f0929.gz/SHA256E-s3989867029--e11668fb4e0fa5584648f855a33375189c57b4c261aae9e5df84efa6de5f0929.gz";
    }

    {
      site = "germline";
      class = "normals";
      pdx = false;
      r1 = "Pm/gQ/SHA256E-s1535275724--bf7edf2a0e84dad5f18bf30fe2e7c033cfa9042908aebfb5ff516d75a1fdbaf2.gz/SHA256E-s1535275724--bf7edf2a0e84dad5f18bf30fe2e7c033cfa9042908aebfb5ff516d75a1fdbaf2.gz";
      r2 = "WV/ff/SHA256E-s1635933869--14de6f3d2e18bfc2a7eefb7e859e2392f1bce8bf678ae864440d4a4fcccf727d.gz/SHA256E-s1635933869--14de6f3d2e18bfc2a7eefb7e859e2392f1bce8bf678ae864440d4a4fcccf727d.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "0K/gj/SHA256E-s13072001051--e3b68ec891f4592fa4f6fe077998007d35635e02ae39a84081ea2f64d6d97ad7.gz/SHA256E-s13072001051--e3b68ec891f4592fa4f6fe077998007d35635e02ae39a84081ea2f64d6d97ad7.gz";
      r2 = "20/mF/SHA256E-s11886431836--5c933bae48d72a19f610d66d4fba6e10180dbdffd5e192f7fecc3129e129bda4.gz/SHA256E-s11886431836--5c933bae48d72a19f610d66d4fba6e10180dbdffd5e192f7fecc3129e129bda4.gz";
    }

    {
      site = "tumour";
      class = "tumours";
      pdx = false;
      r1 = "vv/Q3/SHA256E-s5757139880--bc761ef56bf721f58a4587d7e7f134c89bf6d93200920972d1cf729c79278f4a.gz/SHA256E-s5757139880--bc761ef56bf721f58a4587d7e7f134c89bf6d93200920972d1cf729c79278f4a.gz";
      r2 = "KX/p9/SHA256E-s5872715527--eb7b62c2a4ef2921b78169a96200f15f825099be22aacef4ffadd7a2795b87d5.gz/SHA256E-s5872715527--eb7b62c2a4ef2921b78169a96200f15f825099be22aacef4ffadd7a2795b87d5.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    aligner = "minimap2";
    inherit samples;
    capture = CREv2;
    predictNeoantigens = true;
    name = "SOL2_0045";
  }
