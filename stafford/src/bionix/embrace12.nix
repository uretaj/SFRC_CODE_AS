with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "MF/W8/SHA256E-s1676916608--0a29892b80830ddc73473493fa4170f31d0a5b071a73a9bb177292b0e00c914b.gz/SHA256E-s1676916608--0a29892b80830ddc73473493fa4170f31d0a5b071a73a9bb177292b0e00c914b.gz";
      r2 = "3G/99/SHA256E-s1653493063--8fbb3df46761044a61a83edf2253c8915bafaa350c6450ed3d8886dc35f40cc0.gz/SHA256E-s1653493063--8fbb3df46761044a61a83edf2253c8915bafaa350c6450ed3d8886dc35f40cc0.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "21/jZ/SHA256E-s1670283274--2c62daf5b5a952c3fc84e96801ef99d52e55d67ce9ea34a1917e5feda670a5a9.gz/SHA256E-s1670283274--2c62daf5b5a952c3fc84e96801ef99d52e55d67ce9ea34a1917e5feda670a5a9.gz";
      r2 = "ww/94/SHA256E-s1655743829--5b8b67fcdfaa603416dcc89cb31493732bdfaf87417875098e33a80a20cc3018.gz/SHA256E-s1655743829--5b8b67fcdfaa603416dcc89cb31493732bdfaf87417875098e33a80a20cc3018.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "2F/mw/SHA256E-s1667169899--0947476147eefa8ebfc82315177ede33cc0bea0c4ec402bbff50bc66d94e10cc.gz/SHA256E-s1667169899--0947476147eefa8ebfc82315177ede33cc0bea0c4ec402bbff50bc66d94e10cc.gz";
      r2 = "FM/Wv/SHA256E-s1648507474--9f3a5cc4b0d9fdf798ddfcc71e4770d27e48bfe7259096426e05cff489e9131e.gz/SHA256E-s1648507474--9f3a5cc4b0d9fdf798ddfcc71e4770d27e48bfe7259096426e05cff489e9131e.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "v1/8G/SHA256E-s1619386257--7ec097b8fcab644c0405b2e0533f788acdf1a4428b6f90f5131465fd27501465.gz/SHA256E-s1619386257--7ec097b8fcab644c0405b2e0533f788acdf1a4428b6f90f5131465fd27501465.gz";
      r2 = "36/gM/SHA256E-s1609971768--fe016cac14bbe353239f7895a7d83a5d135eb3af2b325ba3e184bf5da503491c.gz/SHA256E-s1609971768--fe016cac14bbe353239f7895a7d83a5d135eb3af2b325ba3e184bf5da503491c.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "0G/Xq/SHA256E-s661100567--c6970d8f1b6e5b851a5948feaa1c5e0c2ec680e14b69e4b916c768e3f44fc1c0.gz/SHA256E-s661100567--c6970d8f1b6e5b851a5948feaa1c5e0c2ec680e14b69e4b916c768e3f44fc1c0.gz";
      r2 = "W6/67/SHA256E-s664008811--b0054025be832f8d3713edcc919c81ebd34c0a4c4f97d5b395a2aca215e3db34.gz/SHA256E-s664008811--b0054025be832f8d3713edcc919c81ebd34c0a4c4f97d5b395a2aca215e3db34.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "k5/k2/SHA256E-s664007042--0883abdb873eb6e7cc0d2cedde612bc001c40804f77e4131d0bc455ed5e23d48.gz/SHA256E-s664007042--0883abdb873eb6e7cc0d2cedde612bc001c40804f77e4131d0bc455ed5e23d48.gz";
      r2 = "8G/19/SHA256E-s671259159--4e375e129a5e204a7565030b04750f2cd0128e3df755f60273c625b2be549ba0.gz/SHA256E-s671259159--4e375e129a5e204a7565030b04750f2cd0128e3df755f60273c625b2be549ba0.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "gf/0m/SHA256E-s657013710--c8b86c1607bd88aa7362ee22db1484c5f2502769b0ecf6c5b80ee01d591b6632.gz/SHA256E-s657013710--c8b86c1607bd88aa7362ee22db1484c5f2502769b0ecf6c5b80ee01d591b6632.gz";
      r2 = "W1/vz/SHA256E-s662168183--4d4f519aa49c77de769b2957ae4cca05a5911e3d0536a21241803f5a9efbf56a.gz/SHA256E-s662168183--4d4f519aa49c77de769b2957ae4cca05a5911e3d0536a21241803f5a9efbf56a.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "6v/PK/SHA256E-s702688348--36d8caead57905a63678cd6711826dbfb76d52a033c74868f2e4948ac966d666.gz/SHA256E-s702688348--36d8caead57905a63678cd6711826dbfb76d52a033c74868f2e4948ac966d666.gz";
      r2 = "G9/XV/SHA256E-s712579630--cffff06380b10cc47694fa63788694443b95a59dde33c608afdb1851eac07519.gz/SHA256E-s712579630--cffff06380b10cc47694fa63788694443b95a59dde33c608afdb1851eac07519.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE12";
    capture = TwistV2HR;
  }
