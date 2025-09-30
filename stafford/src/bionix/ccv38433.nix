with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "WP/P3/SHA256E-s5577857691--f32ed55aeb4e506c3a211f91f0fa52de8ecf9348313cc353a52556d71d53e1e7.gz/SHA256E-s5577857691--f32ed55aeb4e506c3a211f91f0fa52de8ecf9348313cc353a52556d71d53e1e7.gz";
      r2 = "9W/wg/SHA256E-s5660893902--f2b7e3e3098c2b5d9ec8bf0583b172a1e8d479e39c199b0fd79be56176265732.gz/SHA256E-s5660893902--f2b7e3e3098c2b5d9ec8bf0583b172a1e8d479e39c199b0fd79be56176265732.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV38433";
  }
