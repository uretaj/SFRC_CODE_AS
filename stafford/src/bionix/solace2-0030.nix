with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "Xz/w8/SHA256E-s770649306--f105a28459679450ed30823b30d2fa55911928871a8179554aa9f77b1e422da4.gz/SHA256E-s770649306--f105a28459679450ed30823b30d2fa55911928871a8179554aa9f77b1e422da4.gz";
      r2 = "M5/mX/SHA256E-s768605922--5fa7c30742e995e1738fd65b8f15210da9d0cae1eabd8e0bace0c6a6e876aa22.gz/SHA256E-s768605922--5fa7c30742e995e1738fd65b8f15210da9d0cae1eabd8e0bace0c6a6e876aa22.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "Gk/9x/SHA256E-s789095298--d2cb0cdca7ebdce09187f6a842bf9ba5155df4621beb8b5066416f387b1ab681.gz/SHA256E-s789095298--d2cb0cdca7ebdce09187f6a842bf9ba5155df4621beb8b5066416f387b1ab681.gz";
      r2 = "JW/KW/SHA256E-s789492028--da84129a1057acbcadbfcf460778eeb8b38407d0f0df7898eb46d73f1f25b3f4.gz/SHA256E-s789492028--da84129a1057acbcadbfcf460778eeb8b38407d0f0df7898eb46d73f1f25b3f4.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "5V/85/SHA256E-s787423723--833068ee2c43ba05ff43d6277921652418fb10be056392690f1be5f3f4edfd46.gz/SHA256E-s787423723--833068ee2c43ba05ff43d6277921652418fb10be056392690f1be5f3f4edfd46.gz";
      r2 = "VP/zZ/SHA256E-s788489231--fd1f1b466f0f0211d180ad2ba0070004d0ddc1b0a7d5dd322a533b0227c9dc9d.gz/SHA256E-s788489231--fd1f1b466f0f0211d180ad2ba0070004d0ddc1b0a7d5dd322a533b0227c9dc9d.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "MF/wp/SHA256E-s789484836--323a797be1cd95bb1f0c7a86e023b6905927c236ec585e266eee84640d813c41.gz/SHA256E-s789484836--323a797be1cd95bb1f0c7a86e023b6905927c236ec585e266eee84640d813c41.gz";
      r2 = "K1/fX/SHA256E-s790085863--19362a7f2efe5a82e83dc5dd91d9764c06d7280a7d7d24eaab22ba0290d59054.gz/SHA256E-s790085863--19362a7f2efe5a82e83dc5dd91d9764c06d7280a7d7d24eaab22ba0290d59054.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "1K/72/SHA256E-s809211613--21e0c3ae308743d26dcbba69b790ac89849d3c65874e2897c5651286021564ce.gz/SHA256E-s809211613--21e0c3ae308743d26dcbba69b790ac89849d3c65874e2897c5651286021564ce.gz";
      r2 = "Wf/5v/SHA256E-s810440571--ecd616cc44f48eee8118b11d1b6ec1bfef7d5b96a45d6eefaaf3db2f1546d2a8.gz/SHA256E-s810440571--ecd616cc44f48eee8118b11d1b6ec1bfef7d5b96a45d6eefaaf3db2f1546d2a8.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "72/1q/SHA256E-s781597621--e595890489d81bd08c68bbab2c6b88a3bf68d55ff9628a9ada6cb27e063bb7d7.gz/SHA256E-s781597621--e595890489d81bd08c68bbab2c6b88a3bf68d55ff9628a9ada6cb27e063bb7d7.gz";
      r2 = "8V/g1/SHA256E-s779716829--90b8f8104328cf5750f85b9cb1c8141d4fd1e89b3ebb859fd4da7733a5f3b093.gz/SHA256E-s779716829--90b8f8104328cf5750f85b9cb1c8141d4fd1e89b3ebb859fd4da7733a5f3b093.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "G9/9g/SHA256E-s803414725--0440ddb9a126703cfcba23473d9825df9936d64480962980d954f49a875c5f23.gz/SHA256E-s803414725--0440ddb9a126703cfcba23473d9825df9936d64480962980d954f49a875c5f23.gz";
      r2 = "QF/g6/SHA256E-s804132475--eb8fee593c2b5505bed1cade83340d5b4e2eadba6b288bdcaf475334f161ddec.gz/SHA256E-s804132475--eb8fee593c2b5505bed1cade83340d5b4e2eadba6b288bdcaf475334f161ddec.gz";
    }

    {
      site = "D15";
      class = "tumours";
      pdx = false;
      r1 = "87/X0/SHA256E-s770873480--c2852daa62179bd46d665f2f9a2524737bff635127d0e592d703dc2f84004dcb.gz/SHA256E-s770873480--c2852daa62179bd46d665f2f9a2524737bff635127d0e592d703dc2f84004dcb.gz";
      r2 = "ww/6x/SHA256E-s767774292--b910bcb6d3933128387011955ae762f8a3fa2377491470e51b88ee4f9aea2b5b.gz/SHA256E-s767774292--b910bcb6d3933128387011955ae762f8a3fa2377491470e51b88ee4f9aea2b5b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "12/KM/SHA256E-s900738215--b1da504ea4d30f5b8c8b38930b9b87c55e9830533b86865dfd311f93d23e6583.gz/SHA256E-s900738215--b1da504ea4d30f5b8c8b38930b9b87c55e9830533b86865dfd311f93d23e6583.gz";
      r2 = "WP/31/SHA256E-s908907017--f96d4154694589b2ec0a61301d09db50f252337817d1f6b2f33f2b749eb5b8a2.gz/SHA256E-s908907017--f96d4154694589b2ec0a61301d09db50f252337817d1f6b2f33f2b749eb5b8a2.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GP/Pm/SHA256E-s906518602--b31c7d6d1bd7a8f2f0d3ad493f4d15be3fdfe9403bc0bd08dff7b05314d9a720.gz/SHA256E-s906518602--b31c7d6d1bd7a8f2f0d3ad493f4d15be3fdfe9403bc0bd08dff7b05314d9a720.gz";
      r2 = "KK/5J/SHA256E-s913446371--8ad3aec22aad4194135f4d68367d699cc850e914a9e9cf259867322f36b18606.gz/SHA256E-s913446371--8ad3aec22aad4194135f4d68367d699cc850e914a9e9cf259867322f36b18606.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "GW/6k/SHA256E-s904130962--7df3d41b824ce45c10e655ba9767fd0a4ffd2c2592035e5d10851836bd4d77ed.gz/SHA256E-s904130962--7df3d41b824ce45c10e655ba9767fd0a4ffd2c2592035e5d10851836bd4d77ed.gz";
      r2 = "Mv/0M/SHA256E-s907316308--0221b5b8b2b93b82128de478b34924c1e2da5da1bee6dd06a0b782f974030b94.gz/SHA256E-s907316308--0221b5b8b2b93b82128de478b34924c1e2da5da1bee6dd06a0b782f974030b94.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0030";
    typeHla = true;
    capture = TwistV2HR;
  }
