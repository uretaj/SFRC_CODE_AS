with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "kJ/Wz/SHA256E-s756062652--0f03301de1c84a78c29bbaaca381d759cbbd3ba1e3981969c059f0e5d0e30980.gz/SHA256E-s756062652--0f03301de1c84a78c29bbaaca381d759cbbd3ba1e3981969c059f0e5d0e30980.gz";
      r2 = "jZ/v0/SHA256E-s752662245--b630dc6944e55cb28c9a5b15e0370cba4c883586d93fc9c250370fe4002657a2.gz/SHA256E-s752662245--b630dc6944e55cb28c9a5b15e0370cba4c883586d93fc9c250370fe4002657a2.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "J5/Jz/SHA256E-s788498712--43845861185eee005e0a71d19c140f8d2951485d918adf649a5a493354eb7670.gz/SHA256E-s788498712--43845861185eee005e0a71d19c140f8d2951485d918adf649a5a493354eb7670.gz";
      r2 = "Xk/qk/SHA256E-s786901030--d974a7471077765755e0cbc9f0c1dcc1913905fe97f18ed6560aaddfaacc12c9.gz/SHA256E-s786901030--d974a7471077765755e0cbc9f0c1dcc1913905fe97f18ed6560aaddfaacc12c9.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "44/fQ/SHA256E-s795409425--fd276b656b70249f481812fb5ed2f44aa20029fc5b0d54f175bd49574305fd95.gz/SHA256E-s795409425--fd276b656b70249f481812fb5ed2f44aa20029fc5b0d54f175bd49574305fd95.gz";
      r2 = "XV/pm/SHA256E-s794856424--cfd6a572ac0b6b09768fca06476db79b7bff045c3ff3e8a562b48320519ba755.gz/SHA256E-s794856424--cfd6a572ac0b6b09768fca06476db79b7bff045c3ff3e8a562b48320519ba755.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "xG/8v/SHA256E-s814304042--004bb1dcb808647dca107e4e8236e0d8f1e359590d3aef62d6226645ff66a06a.gz/SHA256E-s814304042--004bb1dcb808647dca107e4e8236e0d8f1e359590d3aef62d6226645ff66a06a.gz";
      r2 = "kp/f5/SHA256E-s813162411--0618f5a5f03f44fe0b7d182e04b50236944cdec7f368fd08f029b19a132939e7.gz/SHA256E-s813162411--0618f5a5f03f44fe0b7d182e04b50236944cdec7f368fd08f029b19a132939e7.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "x8/Mf/SHA256E-s825672301--ea1bd80b624b33d50a4de28d1feb9f8a0075fbb8feca931fe22b1535a80e9d73.gz/SHA256E-s825672301--ea1bd80b624b33d50a4de28d1feb9f8a0075fbb8feca931fe22b1535a80e9d73.gz";
      r2 = "86/pg/SHA256E-s824846224--cdadf1756accba86cd006873d81227a78e92e146e4bede7b0802a6261bc7e348.gz/SHA256E-s824846224--cdadf1756accba86cd006873d81227a78e92e146e4bede7b0802a6261bc7e348.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "27/2k/SHA256E-s794161213--7768741bc847d055a036b8fa554292f97b2e3edea02c81d306f1e45dac1287ff.gz/SHA256E-s794161213--7768741bc847d055a036b8fa554292f97b2e3edea02c81d306f1e45dac1287ff.gz";
      r2 = "4X/2m/SHA256E-s790173851--9768e5e770f9702d25607098f08d91dc474260a979fef4de11683dd4fd8a62dc.gz/SHA256E-s790173851--9768e5e770f9702d25607098f08d91dc474260a979fef4de11683dd4fd8a62dc.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "55/Fx/SHA256E-s817460398--6015e92840f9543dc6ea94739a267da2f23d8b08a9369dcb7716ace7e419820d.gz/SHA256E-s817460398--6015e92840f9543dc6ea94739a267da2f23d8b08a9369dcb7716ace7e419820d.gz";
      r2 = "Qm/wg/SHA256E-s816057322--ba529a420314062d8453a837367b87197da4893a86084fdaf127190e7ea12692.gz/SHA256E-s816057322--ba529a420314062d8453a837367b87197da4893a86084fdaf127190e7ea12692.gz";
    }

    {
      site = "1G";
      class = "tumours";
      pdx = false;
      r1 = "g0/w1/SHA256E-s778219386--65b639a94b4bd1fad1769e6c2c533600cd5c5081ecc9d8864e8f512d1ad20c87.gz/SHA256E-s778219386--65b639a94b4bd1fad1769e6c2c533600cd5c5081ecc9d8864e8f512d1ad20c87.gz";
      r2 = "jz/vF/SHA256E-s773339652--b39333dccdcf14a935c28ca7905bbf5be499719c07ea959e2ae2d8ae96252d4e.gz/SHA256E-s773339652--b39333dccdcf14a935c28ca7905bbf5be499719c07ea959e2ae2d8ae96252d4e.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "6M/kJ/SHA256E-s952916337--5baa9b7043df6d0c504241fcc80201b4784850a08f234577484d41dbee449134.gz/SHA256E-s952916337--5baa9b7043df6d0c504241fcc80201b4784850a08f234577484d41dbee449134.gz";
      r2 = "gK/qz/SHA256E-s953695078--73bb292651acf055175fab062ac05d259c1e1509f1884889f42de13f9935006b.gz/SHA256E-s953695078--73bb292651acf055175fab062ac05d259c1e1509f1884889f42de13f9935006b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "pK/kW/SHA256E-s965157199--3184743e4d9c20f6b48790b34b6af6f2efbb5a15acd507f06f9b5e271131d5a5.gz/SHA256E-s965157199--3184743e4d9c20f6b48790b34b6af6f2efbb5a15acd507f06f9b5e271131d5a5.gz";
      r2 = "7K/fv/SHA256E-s964126770--92953345bbbf3517c602b218298eda5da0ca58c18dc120b379bfccbe4cd80e4c.gz/SHA256E-s964126770--92953345bbbf3517c602b218298eda5da0ca58c18dc120b379bfccbe4cd80e4c.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "67/PW/SHA256E-s969011718--92fe7a2d2dcc7d50a4e8e51b2712e10c8c6d62c50b34a63b881b0b30c64bb90a.gz/SHA256E-s969011718--92fe7a2d2dcc7d50a4e8e51b2712e10c8c6d62c50b34a63b881b0b30c64bb90a.gz";
      r2 = "06/JZ/SHA256E-s963626987--2a2c66dc8da74977e2b0ec02bd468f184a5787062327aa933d517818ebf9966f.gz/SHA256E-s963626987--2a2c66dc8da74977e2b0ec02bd468f184a5787062327aa933d517818ebf9966f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0107";
    typeHla = true;
    capture = TwistV2HR;
  }
