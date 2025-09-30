with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "3M/gZ/SHA256E-s1823778388--6858dc91e62dd973a4644bacbd27449192f884710ed462420f6402f1aa048793.gz/SHA256E-s1823778388--6858dc91e62dd973a4644bacbd27449192f884710ed462420f6402f1aa048793.gz";
      r2 = "MW/j0/SHA256E-s1839774515--2f7fb7aef1d5fe78cdbd2244f7f262073463630ef28b8d093bb070e1862ec536.gz/SHA256E-s1839774515--2f7fb7aef1d5fe78cdbd2244f7f262073463630ef28b8d093bb070e1862ec536.gz";
    }

    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Qg/Kf/SHA256E-s1917333346--6e9374a18be990c69f0f93e5a0962c539b487abb9255d84c29693e96ce2aab96.gz/SHA256E-s1917333346--6e9374a18be990c69f0f93e5a0962c539b487abb9255d84c29693e96ce2aab96.gz";
      r2 = "MP/4K/SHA256E-s1918118516--d9818312c3532b2d70bbb685be2671ababcfefebb03a21e3861f6d9414139885.gz/SHA256E-s1918118516--d9818312c3532b2d70bbb685be2671ababcfefebb03a21e3861f6d9414139885.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV22619";
  }
