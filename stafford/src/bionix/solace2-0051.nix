with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "gw/xf/SHA256E-s2952817625--19786d6dc47a391b18dafceb19f8bb548e94a7239b30374ab4bf5bd30e684833.gz/SHA256E-s2952817625--19786d6dc47a391b18dafceb19f8bb548e94a7239b30374ab4bf5bd30e684833.gz";
      r2 = "Pp/vj/SHA256E-s2990826617--f54ea923c18898bb622f12734801915edb5ce27f57823668cd06daee1548177f.gz/SHA256E-s2990826617--f54ea923c18898bb622f12734801915edb5ce27f57823668cd06daee1548177f.gz";
    }

    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "9m/Jz/SHA256E-s2930451845--5d8b2b66f2022bfee563f559724b853419a411625abb52d0285fc0f1be63521e.gz/SHA256E-s2930451845--5d8b2b66f2022bfee563f559724b853419a411625abb52d0285fc0f1be63521e.gz";
      r2 = "2W/kP/SHA256E-s2953494921--ef998ffac56468d08a9413b39bcd90510d7524872e0f0902c83a6db74ad2efd5.gz/SHA256E-s2953494921--ef998ffac56468d08a9413b39bcd90510d7524872e0f0902c83a6db74ad2efd5.gz";
    }

    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "0w/P7/SHA256E-s2931501241--586db98effa92175123290e8b5c4e0f50424bd9a793dc1b65427efe2a15235ff.gz/SHA256E-s2931501241--586db98effa92175123290e8b5c4e0f50424bd9a793dc1b65427efe2a15235ff.gz";
      r2 = "j8/m0/SHA256E-s2948197494--39a7fb50ccabc71ec5f4301db0bfca893bfac02049ecb989cf075dfb4f250cac.gz/SHA256E-s2948197494--39a7fb50ccabc71ec5f4301db0bfca893bfac02049ecb989cf075dfb4f250cac.gz";
    }

    {
      site = "1D";
      class = "tumours";
      pdx = false;
      r1 = "Qf/XJ/SHA256E-s2935793579--ad5731e181de43eece93c86ac31e25cbcb05242eae7c7cba365f4712d841e761.gz/SHA256E-s2935793579--ad5731e181de43eece93c86ac31e25cbcb05242eae7c7cba365f4712d841e761.gz";
      r2 = "7g/69/SHA256E-s2952420197--93e24564d22d8cf46442e4ce7b77052fe30cb075f343c447ce70e492ff43b7f0.gz/SHA256E-s2952420197--93e24564d22d8cf46442e4ce7b77052fe30cb075f343c447ce70e492ff43b7f0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "j5/Q2/SHA256E-s1638017771--95bdc3ffc45cf861c9105ebb8bbfe99ed625bfd35f9f91e9da259ad9b0add3fb.gz/SHA256E-s1638017771--95bdc3ffc45cf861c9105ebb8bbfe99ed625bfd35f9f91e9da259ad9b0add3fb.gz";
      r2 = "2j/zv/SHA256E-s1634710505--e485064d1aa0e82d0bc9b6beab3e603aaabec90cac8f3d60b788a3e2d10f57e9.gz/SHA256E-s1634710505--e485064d1aa0e82d0bc9b6beab3e603aaabec90cac8f3d60b788a3e2d10f57e9.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "87/9k/SHA256E-s1664109621--35529f256674010c147edd3b2838ee474f89cf0fab6e243d90f8d89d3e62158e.gz/SHA256E-s1664109621--35529f256674010c147edd3b2838ee474f89cf0fab6e243d90f8d89d3e62158e.gz";
      r2 = "g5/63/SHA256E-s1658173657--f468783ff48eeaa665067c2da6a4cb8abd254ef2553cab144d7c5269680ddc3e.gz/SHA256E-s1658173657--f468783ff48eeaa665067c2da6a4cb8abd254ef2553cab144d7c5269680ddc3e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "z6/JX/SHA256E-s1667566283--73ec2628d6b20065245b4893ff34b75ed37ada827be2aa47fb3214b8c83e5caa.gz/SHA256E-s1667566283--73ec2628d6b20065245b4893ff34b75ed37ada827be2aa47fb3214b8c83e5caa.gz";
      r2 = "qg/5X/SHA256E-s1654322850--15423f59dc40d95232ea5ad431c3c9e86f665c9cda7fc6059a01a4b6cbe03791.gz/SHA256E-s1654322850--15423f59dc40d95232ea5ad431c3c9e86f665c9cda7fc6059a01a4b6cbe03791.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0051";
    typeHla = true;
    capture = TwistV2HR;
  }
