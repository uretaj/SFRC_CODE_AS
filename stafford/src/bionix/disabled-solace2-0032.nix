with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "6X/jM/SHA256E-s931502289--525fce243f542f3735e16b399ead3b64e4af6224edb8f9c7b162e4c5a355f007.gz/SHA256E-s931502289--525fce243f542f3735e16b399ead3b64e4af6224edb8f9c7b162e4c5a355f007.gz";
      r2 = "9P/1G/SHA256E-s932189111--b6b8a13bea38116e54c2ee6526343bc3677b38ec6abd2c04bfe42ad7ce02955d.gz/SHA256E-s932189111--b6b8a13bea38116e54c2ee6526343bc3677b38ec6abd2c04bfe42ad7ce02955d.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "Wv/38/SHA256E-s969133460--290bd7ad8c2794bcd577f7d5d1b89b454a2c5c9157d5740715fee5b60791cdd5.gz/SHA256E-s969133460--290bd7ad8c2794bcd577f7d5d1b89b454a2c5c9157d5740715fee5b60791cdd5.gz";
      r2 = "W2/9v/SHA256E-s972818504--d10c5b8bccd870c6c5884298db31fdcd5287e3fdb47e944523e8e7ca82d36c4c.gz/SHA256E-s972818504--d10c5b8bccd870c6c5884298db31fdcd5287e3fdb47e944523e8e7ca82d36c4c.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "0f/41/SHA256E-s979826904--b29d4d0dfcbf4a28eb3c1707cf5e19347742d5a0eae04d81795255a88752104e.gz/SHA256E-s979826904--b29d4d0dfcbf4a28eb3c1707cf5e19347742d5a0eae04d81795255a88752104e.gz";
      r2 = "77/kF/SHA256E-s984906046--d68c7ffbf73e87a126e66845eed45116a3ccaa0ff755f4edcb5294d2e34d81a6.gz/SHA256E-s984906046--d68c7ffbf73e87a126e66845eed45116a3ccaa0ff755f4edcb5294d2e34d81a6.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "wM/f5/SHA256E-s989192218--e397c2404fd114e6d4a1a6338475da47ad425eb90e781848f3f9258d7ffdf6ba.gz/SHA256E-s989192218--e397c2404fd114e6d4a1a6338475da47ad425eb90e781848f3f9258d7ffdf6ba.gz";
      r2 = "KX/K5/SHA256E-s993482928--31d0a96d9507d012376be6cc0578e6a98d709b2c104df68db788491059348f15.gz/SHA256E-s993482928--31d0a96d9507d012376be6cc0578e6a98d709b2c104df68db788491059348f15.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "pp/QV/SHA256E-s1005694789--61d1c7c9a17855e0b827e557feba4cfd44cdff7a1caef6122b16f10b3df53a72.gz/SHA256E-s1005694789--61d1c7c9a17855e0b827e557feba4cfd44cdff7a1caef6122b16f10b3df53a72.gz";
      r2 = "GW/X6/SHA256E-s1010668266--6602b7daabef4b349fb96fdf2fef86665ff876a6a3f9284b7b58132dd2628677.gz/SHA256E-s1010668266--6602b7daabef4b349fb96fdf2fef86665ff876a6a3f9284b7b58132dd2628677.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "6j/4m/SHA256E-s1000983125--4e735ece3d2921b15074cb32652053930f653acf0b9dbfd76bbc54fb9635303f.gz/SHA256E-s1000983125--4e735ece3d2921b15074cb32652053930f653acf0b9dbfd76bbc54fb9635303f.gz";
      r2 = "mW/Qq/SHA256E-s1001940504--e2ae9647e8e7990ac755b20b11bd156b283383280ba6f1a6c449129c2e31dc00.gz/SHA256E-s1001940504--e2ae9647e8e7990ac755b20b11bd156b283383280ba6f1a6c449129c2e31dc00.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "v0/MK/SHA256E-s993609340--9ed9d35be22dbada2a72055523fa87e2f282016cbb8c7aa4e7971cd46079f084.gz/SHA256E-s993609340--9ed9d35be22dbada2a72055523fa87e2f282016cbb8c7aa4e7971cd46079f084.gz";
      r2 = "wx/8m/SHA256E-s997734003--3c9afe3998f381f054c842ee55d26b9380774d40e21af4c6e7ac9a7fda21257f.gz/SHA256E-s997734003--3c9afe3998f381f054c842ee55d26b9380774d40e21af4c6e7ac9a7fda21257f.gz";
    }

    {
      site = "2.1";
      class = "tumours";
      pdx = false;
      r1 = "KM/vG/SHA256E-s982770909--adc50a004f4c206c22e948a200609d2206d5c93bdb75920491390d0df25d50c0.gz/SHA256E-s982770909--adc50a004f4c206c22e948a200609d2206d5c93bdb75920491390d0df25d50c0.gz";
      r2 = "Wm/4K/SHA256E-s981876079--7fe4107d94598aa489f450f877ff6ba5949de15058bc5fd3b436a2fbdf372f0b.gz/SHA256E-s981876079--7fe4107d94598aa489f450f877ff6ba5949de15058bc5fd3b436a2fbdf372f0b.gz";
    }

    {
      site = "22HCNNLT3_GTTGACCT-AAGCACTG_L004";
      class = "tumours";
      pdx = false;
      r1 = "WZ/MZ/SHA256E-s788566186--3f0d4f07109ab338fc7fa8ae569768f7e9aa2b47c7f67184d19726449bd9ffde.gz/SHA256E-s788566186--3f0d4f07109ab338fc7fa8ae569768f7e9aa2b47c7f67184d19726449bd9ffde.gz";
      r2 = "Wq/wp/SHA256E-s789072107--8b4942c37b8a6199bfef706ce1b75487c21e8ea7523befc7efbf5993acfe439d.gz/SHA256E-s789072107--8b4942c37b8a6199bfef706ce1b75487c21e8ea7523befc7efbf5993acfe439d.gz";
    }

    {
      site = "22HCNNLT3_GTTGACCT-AAGCACTG_L005";
      class = "tumours";
      pdx = false;
      r1 = "XV/FX/SHA256E-s791331803--e068a5171537d35575cab8cf6c80c1890b4aba486c7ceaed5974f79a6d1a44b9.gz/SHA256E-s791331803--e068a5171537d35575cab8cf6c80c1890b4aba486c7ceaed5974f79a6d1a44b9.gz";
      r2 = "9Q/1v/SHA256E-s796808537--4f1d99dbb2632b4aafa070f4d176982ba3a6cde1b4a04783e7cc23de2e5b4ddd.gz/SHA256E-s796808537--4f1d99dbb2632b4aafa070f4d176982ba3a6cde1b4a04783e7cc23de2e5b4ddd.gz";
    }

    {
      site = "22HCNNLT3_GTTGACCT-AAGCACTG_L006";
      class = "tumours";
      pdx = false;
      r1 = "qq/94/SHA256E-s783234972--20056cae2dd9ca2023356e0ffe8ea94435e48141d79fba2194b6dd4cec52eadd.gz/SHA256E-s783234972--20056cae2dd9ca2023356e0ffe8ea94435e48141d79fba2194b6dd4cec52eadd.gz";
      r2 = "64/54/SHA256E-s786388906--fbec55b218b41f0afe6a408483383727f1480e3ce08b0ee706b647870d4507f0.gz/SHA256E-s786388906--fbec55b218b41f0afe6a408483383727f1480e3ce08b0ee706b647870d4507f0.gz";
    }

    {
      site = "22HCNNLT3_GTTGACCT-AAGCACTG_L007";
      class = "tumours";
      pdx = false;
      r1 = "G8/Jx/SHA256E-s814373692--e8eb3973cb081066fb1b7ba37e8fc6d419f2a96510f35d678ce4056f175528f0.gz/SHA256E-s814373692--e8eb3973cb081066fb1b7ba37e8fc6d419f2a96510f35d678ce4056f175528f0.gz";
      r2 = "xm/qm/SHA256E-s823126949--197624fa9d48ae1dc0b613dfaf53aeb1f451d378000c32c9c388fab435efa7bb.gz/SHA256E-s823126949--197624fa9d48ae1dc0b613dfaf53aeb1f451d378000c32c9c388fab435efa7bb.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0032";
    capture = TwistV2HR;
  }
