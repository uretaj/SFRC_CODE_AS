with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "q3/zw/SHA256E-s2324486297--e5756331353f50a7eff76a012f729c9bcbe7f00c1fc9b8482bc3b94540a97c48.gz/SHA256E-s2324486297--e5756331353f50a7eff76a012f729c9bcbe7f00c1fc9b8482bc3b94540a97c48.gz";
      r2 = "p0/zP/SHA256E-s2298866844--d4b87eb7e234995d857421988bce4467b4a45693b0df854cc9c7b6550af7a04f.gz/SHA256E-s2298866844--d4b87eb7e234995d857421988bce4467b4a45693b0df854cc9c7b6550af7a04f.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "6V/8V/SHA256E-s2317263071--36d12037616c3b58f623d24a723fd8761acd086af2d38382eba399daa8d473bf.gz/SHA256E-s2317263071--36d12037616c3b58f623d24a723fd8761acd086af2d38382eba399daa8d473bf.gz";
      r2 = "kP/gw/SHA256E-s2303325041--557408a7812cf1a5dad70706dce698b06d4e0478b288d29b0ae50a4042179bf3.gz/SHA256E-s2303325041--557408a7812cf1a5dad70706dce698b06d4e0478b288d29b0ae50a4042179bf3.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "WV/FQ/SHA256E-s2321786812--a73d288949c613bf1fd14ac2e282c9dea9211f18929bc2ab3adcc82abd2c5def.gz/SHA256E-s2321786812--a73d288949c613bf1fd14ac2e282c9dea9211f18929bc2ab3adcc82abd2c5def.gz";
      r2 = "pw/vj/SHA256E-s2304201398--f69d2a0399f4c044ea810e88c2ce2b99658d13fca7368190616d1ff06d6831d6.gz/SHA256E-s2304201398--f69d2a0399f4c044ea810e88c2ce2b99658d13fca7368190616d1ff06d6831d6.gz";
    }

    {
      site = "2B";
      class = "tumours";
      pdx = false;
      r1 = "qG/w0/SHA256E-s2204773228--89734be758ebb3d2c30bbff8752d7a4e882cdfa87cc5950af2e5db7cd8e0121c.gz/SHA256E-s2204773228--89734be758ebb3d2c30bbff8752d7a4e882cdfa87cc5950af2e5db7cd8e0121c.gz";
      r2 = "QJ/Mq/SHA256E-s2198847139--5159667a16a9f01d52b926c82cc6b93ac1943f304f001313b797c1a6eb083078.gz/SHA256E-s2198847139--5159667a16a9f01d52b926c82cc6b93ac1943f304f001313b797c1a6eb083078.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "gx/kj/SHA256E-s2114635470--894e1968af227c94bd164b0322560371a850eb216b9a75cf5d1b560acbfe6edd.gz/SHA256E-s2114635470--894e1968af227c94bd164b0322560371a850eb216b9a75cf5d1b560acbfe6edd.gz";
      r2 = "08/vf/SHA256E-s2121779927--08afac8cc9fc22ed2bdb26e921555a801c30b9d8853583a7d2b5e276c734bf2e.gz/SHA256E-s2121779927--08afac8cc9fc22ed2bdb26e921555a801c30b9d8853583a7d2b5e276c734bf2e.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "8p/Gx/SHA256E-s2106111344--9a510bd671cf2784f50840bf84ae985e776dcf316e9119fe82988f7f50aba354.gz/SHA256E-s2106111344--9a510bd671cf2784f50840bf84ae985e776dcf316e9119fe82988f7f50aba354.gz";
      r2 = "PZ/zV/SHA256E-s2123718513--ec614b65e131435cb2344774cbc6f8400f5ad4c0c5b06f7a4dd69ff7f582c79d.gz/SHA256E-s2123718513--ec614b65e131435cb2344774cbc6f8400f5ad4c0c5b06f7a4dd69ff7f582c79d.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "0M/wP/SHA256E-s2124482024--70973608f2582c7aa202536fd6c2c4540a3a50ba39e6b45410d6c557abb012d5.gz/SHA256E-s2124482024--70973608f2582c7aa202536fd6c2c4540a3a50ba39e6b45410d6c557abb012d5.gz";
      r2 = "3W/0q/SHA256E-s2138820608--078bd70ca4317e26f7d89c4c7c9e4cad127135ed36a1081661c70417b2fee0df.gz/SHA256E-s2138820608--078bd70ca4317e26f7d89c4c7c9e4cad127135ed36a1081661c70417b2fee0df.gz";
    }

    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "8X/jj/SHA256E-s2000311514--da9056e796f758ddf8728e155976c657869c226eb0dc4aeae6d81ecd6e17ab51.gz/SHA256E-s2000311514--da9056e796f758ddf8728e155976c657869c226eb0dc4aeae6d81ecd6e17ab51.gz";
      r2 = "j4/9K/SHA256E-s2025846857--a5d7b1429c7a09f8e26803e72c2fbd8049dc7e6bc74b2fd943bdb1ec58dbab02.gz/SHA256E-s2025846857--a5d7b1429c7a09f8e26803e72c2fbd8049dc7e6bc74b2fd943bdb1ec58dbab02.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "GP/4p/SHA256E-s728489781--03c5f3e2abb6f87d233a14efc7618da99e749fdb9896bae51b0aca6e3c13cfae.gz/SHA256E-s728489781--03c5f3e2abb6f87d233a14efc7618da99e749fdb9896bae51b0aca6e3c13cfae.gz";
      r2 = "36/4g/SHA256E-s735352241--7fc8b9db6e633f18275568128891ff4e30c3e782c845be4c752f4ac7c392d797.gz/SHA256E-s735352241--7fc8b9db6e633f18275568128891ff4e30c3e782c845be4c752f4ac7c392d797.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Fm/zp/SHA256E-s733195729--74c0582a76bbac8b2cfbc11c81cfc16796010c4dc28a745cac2a338e844ca799.gz/SHA256E-s733195729--74c0582a76bbac8b2cfbc11c81cfc16796010c4dc28a745cac2a338e844ca799.gz";
      r2 = "pP/2Z/SHA256E-s745117379--53f6a3fa35947eff0283c722f2a601e9c958f27a1c39d68da99d3698270e6361.gz/SHA256E-s745117379--53f6a3fa35947eff0283c722f2a601e9c958f27a1c39d68da99d3698270e6361.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "8v/zx/SHA256E-s720759397--9accc91d6245ee24a63503f6dfe9c95afacbe94f32a06c40d8205df1e0b69145.gz/SHA256E-s720759397--9accc91d6245ee24a63503f6dfe9c95afacbe94f32a06c40d8205df1e0b69145.gz";
      r2 = "k6/W1/SHA256E-s730407766--afb85e9afc79d6f6a23ee0722aa0d172e117d43ee9e25308edf860fc6244321b.gz/SHA256E-s730407766--afb85e9afc79d6f6a23ee0722aa0d172e117d43ee9e25308edf860fc6244321b.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "P4/MZ/SHA256E-s771236982--3d0cad0d4ea0021f292f1106b3a7594444e4068a741e1cd49e0b92629bb59465.gz/SHA256E-s771236982--3d0cad0d4ea0021f292f1106b3a7594444e4068a741e1cd49e0b92629bb59465.gz";
      r2 = "Pg/Q1/SHA256E-s787361385--404fabe3e9745fbd03fdb9478bf5457e24a0d2227c505c03d1e1142bdf3a1ffa.gz/SHA256E-s787361385--404fabe3e9745fbd03fdb9478bf5457e24a0d2227c505c03d1e1142bdf3a1ffa.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE08";
    capture = TwistV2HR;
  }
