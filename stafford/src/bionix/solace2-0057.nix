with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "8G/fZ/SHA256E-s4278772363--ddf30d144beb03048869e76f7a3b69b22cbb515ee093f305a2ea1e1b81ce1318.gz/SHA256E-s4278772363--ddf30d144beb03048869e76f7a3b69b22cbb515ee093f305a2ea1e1b81ce1318.gz";
      r2 = "FQ/px/SHA256E-s4312771076--30ba828da9693e68bcc55518336166f0e1f69b82cd64bc608a5d48c3ba250fab.gz/SHA256E-s4312771076--30ba828da9693e68bcc55518336166f0e1f69b82cd64bc608a5d48c3ba250fab.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k8/9G/SHA256E-s1142992405--2af8a128bf77b24754bcf604e02fa7001cc8c131e3d958adfb6b0e8d41d19573.gz/SHA256E-s1142992405--2af8a128bf77b24754bcf604e02fa7001cc8c131e3d958adfb6b0e8d41d19573.gz";
      r2 = "zF/Xq/SHA256E-s1133102073--303793acf8c2d9085b1dece53f1e5bb9c7f08ad4ee46ff99344954567632ef5d.gz/SHA256E-s1133102073--303793acf8c2d9085b1dece53f1e5bb9c7f08ad4ee46ff99344954567632ef5d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "2W/PM/SHA256E-s1158769570--02ca7d7532748fdfff61f79283f0af7ec4b72bd29c0e8266c0d4aa123e2a86eb.gz/SHA256E-s1158769570--02ca7d7532748fdfff61f79283f0af7ec4b72bd29c0e8266c0d4aa123e2a86eb.gz";
      r2 = "p8/k1/SHA256E-s1147680740--dab4e42b1a5877bacedd9dffbcf5452e85d0d1f6c979f7661880456130d06266.gz/SHA256E-s1147680740--dab4e42b1a5877bacedd9dffbcf5452e85d0d1f6c979f7661880456130d06266.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "F0/Pj/SHA256E-s1162083610--9650b63e8f3f5c430353683be05f37157835cef5de8ebef3e6aca9f4e2a476d8.gz/SHA256E-s1162083610--9650b63e8f3f5c430353683be05f37157835cef5de8ebef3e6aca9f4e2a476d8.gz";
      r2 = "p2/PJ/SHA256E-s1146596101--ad6b1174e981d63896107b125c97e87b0b80b1737a7641697110fad4794540ad.gz/SHA256E-s1146596101--ad6b1174e981d63896107b125c97e87b0b80b1737a7641697110fad4794540ad.gz";
    }
    {
      site = "1A";
      class = "tumours";
      pdx = false;
      r1 = "MZ/6W/SHA256E-s9558838025--5db93c74540014356a071152003b0bcddd9647052da0b3ba5e5d253c8eaaf489.gz/SHA256E-s9558838025--5db93c74540014356a071152003b0bcddd9647052da0b3ba5e5d253c8eaaf489.gz";
      r2 = "95/Ff/SHA256E-s9609888813--60d3ef538eb2da50d960b4c3febb90c1784295bf255726ead231fc34be0231d7.gz/SHA256E-s9609888813--60d3ef538eb2da50d960b4c3febb90c1784295bf255726ead231fc34be0231d7.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0057";
    typeHla = true;
    capture = TwistV2HR;
  }
