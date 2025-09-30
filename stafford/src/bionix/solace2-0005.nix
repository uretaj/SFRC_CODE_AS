with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "V7/pX/SHA256E-s1705265188--ee76a0256e1da4bf3595b33b2e6d5322a9157236d926e19bdafecc9afa37f231.gz/SHA256E-s1705265188--ee76a0256e1da4bf3595b33b2e6d5322a9157236d926e19bdafecc9afa37f231.gz";
      r2 = "PJ/jJ/SHA256E-s1738055786--6b2e20d45efccb47114872e3f4ccaa5c026f7768795468980975334e501be953.gz/SHA256E-s1738055786--6b2e20d45efccb47114872e3f4ccaa5c026f7768795468980975334e501be953.gz";
    }

    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "3p/f4/SHA256E-s1711486011--574acd85d4290294a7cda48a1bcd6fb9d58da0f6eb41ddce722e0b7bafbe375d.gz/SHA256E-s1711486011--574acd85d4290294a7cda48a1bcd6fb9d58da0f6eb41ddce722e0b7bafbe375d.gz";
      r2 = "7x/43/SHA256E-s1736505479--886cdb0ce793324d48c1ad0c4048a5914a737595f032f74ae93482cb26d16f53.gz/SHA256E-s1736505479--886cdb0ce793324d48c1ad0c4048a5914a737595f032f74ae93482cb26d16f53.gz";
    }

    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "Mj/WP/SHA256E-s1734682488--dc9197bcd2dfbc0b846c1faea27cf6d130358fd3e2b00d37638a59d138a6e6cb.gz/SHA256E-s1734682488--dc9197bcd2dfbc0b846c1faea27cf6d130358fd3e2b00d37638a59d138a6e6cb.gz";
      r2 = "k6/8P/SHA256E-s1754930493--a220d96c236eb243d965cd9cc6568ac711a7a737fb96b77757de9ef999839c1b.gz/SHA256E-s1754930493--a220d96c236eb243d965cd9cc6568ac711a7a737fb96b77757de9ef999839c1b.gz";
    }

    {
      site = "1Q";
      class = "tumours";
      pdx = false;
      r1 = "mF/xV/SHA256E-s1730253807--9f383c46c0a127f10b94031fcf74c30872440d3375327712fab0d1be0054241f.gz/SHA256E-s1730253807--9f383c46c0a127f10b94031fcf74c30872440d3375327712fab0d1be0054241f.gz";
      r2 = "Gx/44/SHA256E-s1750478011--2ae875200ef8593d5a383db0d487412f120679e8b88ed85c68f80078c4a0b189.gz/SHA256E-s1750478011--2ae875200ef8593d5a383db0d487412f120679e8b88ed85c68f80078c4a0b189.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "wZ/Q5/SHA256E-s1126996397--9dd3b2ab8b843ce75befc0dfc73bc245c665d38eb53ce56af52fb3c27cb4d092.gz/SHA256E-s1126996397--9dd3b2ab8b843ce75befc0dfc73bc245c665d38eb53ce56af52fb3c27cb4d092.gz";
      r2 = "8z/v3/SHA256E-s1131562094--7bc8d0c3ae85b68b522791343ef29f5b728013e0f743be10ef530f07905f28be.gz/SHA256E-s1131562094--7bc8d0c3ae85b68b522791343ef29f5b728013e0f743be10ef530f07905f28be.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "qp/wX/SHA256E-s1133233163--c87a45cdfae9cfa2376c253280b58dfc89105a268507377331edac29ba92b5c3.gz/SHA256E-s1133233163--c87a45cdfae9cfa2376c253280b58dfc89105a268507377331edac29ba92b5c3.gz";
      r2 = "m4/g9/SHA256E-s1136346780--4e7c5ed95935671a8841f8e82eb64ad7750aee111f69d0564139bd68cd4c94c3.gz/SHA256E-s1136346780--4e7c5ed95935671a8841f8e82eb64ad7750aee111f69d0564139bd68cd4c94c3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "13/z9/SHA256E-s1127440220--8a7fa63e82dae3c58f8c205467a6507e0a59028c97ad2b37b82c96473e5a5632.gz/SHA256E-s1127440220--8a7fa63e82dae3c58f8c205467a6507e0a59028c97ad2b37b82c96473e5a5632.gz";
      r2 = "qP/66/SHA256E-s1125758512--09994fbf9e40bb60504faaaa94ae839e8d6b7a92317224e3a29620f38e89c911.gz/SHA256E-s1125758512--09994fbf9e40bb60504faaaa94ae839e8d6b7a92317224e3a29620f38e89c911.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0005";
    typeHla = true;
    capture = TwistV2HR;
  }
