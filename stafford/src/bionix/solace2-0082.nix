with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "4q/wf/SHA256E-s9610046227--ea693a0129970e779db019892c1bac60f4e2ae67b881f062d6f81b0d20a2f6da.gz/SHA256E-s9610046227--ea693a0129970e779db019892c1bac60f4e2ae67b881f062d6f81b0d20a2f6da.gz";
      r2 = "j6/54/SHA256E-s9631966121--b15ac605e23704c708e69dd86e5c9afee77ad5a337912b41f9d26223e7cc35df.gz/SHA256E-s9631966121--b15ac605e23704c708e69dd86e5c9afee77ad5a337912b41f9d26223e7cc35df.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Z1/0m/SHA256E-s1375909726--ebc27d5b2b60a71734846f2b750bf4bdb70b7bf1aa343a315ab2b1b9f6f377b9.gz/SHA256E-s1375909726--ebc27d5b2b60a71734846f2b750bf4bdb70b7bf1aa343a315ab2b1b9f6f377b9.gz";
      r2 = "pK/JJ/SHA256E-s1377418763--f56eecab3868fe59e2ee1ca39de72bc5850bafd40d4ddc1671e5cda58e08a1ce.gz/SHA256E-s1377418763--f56eecab3868fe59e2ee1ca39de72bc5850bafd40d4ddc1671e5cda58e08a1ce.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jP/Qp/SHA256E-s1379803368--cf523e236a4503f5b266ae4134f3f2a526c9b0bc43096e0eb6d4a9299095eaef.gz/SHA256E-s1379803368--cf523e236a4503f5b266ae4134f3f2a526c9b0bc43096e0eb6d4a9299095eaef.gz";
      r2 = "k0/7m/SHA256E-s1378811817--612668bcefb11bc9fa1e14f1857afd7a6b7aa44278414c9b57b93784660b9323.gz/SHA256E-s1378811817--612668bcefb11bc9fa1e14f1857afd7a6b7aa44278414c9b57b93784660b9323.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "xK/F7/SHA256E-s1375035832--cf535bdb73ed98f8a263bc83de6142e24eca25e7e5fe7ab7dfad452f818d508d.gz/SHA256E-s1375035832--cf535bdb73ed98f8a263bc83de6142e24eca25e7e5fe7ab7dfad452f818d508d.gz";
      r2 = "xG/jz/SHA256E-s1368064517--4bce0ab887f8496608992eeab09cad26f1af268ede4b0be66d7b7cd16491ced8.gz/SHA256E-s1368064517--4bce0ab887f8496608992eeab09cad26f1af268ede4b0be66d7b7cd16491ced8.gz";
    }
    {
      site = "A12";
      class = "tumours";
      pdx = false;
      r1 = "6G/zM/SHA256E-s7877321685--03ef74540f4687bafb801bc9da313032b4d4172a0b0454d13964ec76adeb7001.gz/SHA256E-s7877321685--03ef74540f4687bafb801bc9da313032b4d4172a0b0454d13964ec76adeb7001.gz";
      r2 = "0j/g2/SHA256E-s7895849704--e6232084ea6c1e3e96c5cff78b26319419509b2bb8660a50f3a97f804fd331e1.gz/SHA256E-s7895849704--e6232084ea6c1e3e96c5cff78b26319419509b2bb8660a50f3a97f804fd331e1.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0082";
    typeHla = true;
    capture = TwistV2HR;
  }
