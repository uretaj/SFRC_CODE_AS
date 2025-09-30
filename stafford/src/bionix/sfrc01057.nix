with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1.4";
      class = "tumours";
      pdx = false;
      r1 = "0J/Z4/SHA256E-s5002623073--6bf47c0092d7aa5fc200552b7cf9f2a122a4a44effdb8ec3329fa10f139c8164.gz/SHA256E-s5002623073--6bf47c0092d7aa5fc200552b7cf9f2a122a4a44effdb8ec3329fa10f139c8164.gz";
      r2 = "jf/MG/SHA256E-s5197411863--c67e3140ec423113ec3ac975942979c56e1c611af463769e8e52f70e43bc1abe.gz/SHA256E-s5197411863--c67e3140ec423113ec3ac975942979c56e1c611af463769e8e52f70e43bc1abe.gz";
    }
    {
      site = "B1";
      class = "normals";
      r1 = "8w/37/SHA256E-s3184658458--57104575eca304dba031d6b312983478922fafc34617cb3dd35919f02e25601b.gz/SHA256E-s3184658458--57104575eca304dba031d6b312983478922fafc34617cb3dd35919f02e25601b.gz";
      r2 = "6q/pJ/SHA256E-s3254950668--cba6e8762f44177ac9ef43b0dddda046810c2cb8c75da2f85ddb0110cae6e781.gz/SHA256E-s3254950668--cba6e8762f44177ac9ef43b0dddda046810c2cb8c75da2f85ddb0110cae6e781.gz";
    }
    {
      site = "A4";
      class = "tumours";
      pdx = false;
      r1 = "K0/qP/SHA256E-s3270979438--0f89d0c91ffa3674706c539db7c03ded860e71caf28bf742753e5b42dd57eca4.gz/SHA256E-s3270979438--0f89d0c91ffa3674706c539db7c03ded860e71caf28bf742753e5b42dd57eca4.gz";
      r2 = "j0/K6/SHA256E-s3603092107--43ed056747d64d7db4c1b3505c25017aeea0262d73c77b842ce730c4eacda92e.gz/SHA256E-s3603092107--43ed056747d64d7db4c1b3505c25017aeea0262d73c77b842ce730c4eacda92e.gz";
    }
    {
      site = "7";
      class = "tumours";
      pdx = false;
      r1 = "7K/kz/SHA256E-s2606923430--4b78f72eb40c10f880b43cca8f3102fbc863dfddc4c87f303b52f1430e121d96.gz/SHA256E-s2606923430--4b78f72eb40c10f880b43cca8f3102fbc863dfddc4c87f303b52f1430e121d96.gz";
      r2 = "6X/z8/SHA256E-s2860639927--f4fc8c972be4c88e9511d75ec9325d2ec4e5b311f29a6bddd8bbbe66d8bea256.gz/SHA256E-s2860639927--f4fc8c972be4c88e9511d75ec9325d2ec4e5b311f29a6bddd8bbbe66d8bea256.gz";
    }
    {
      site = "1.4";
      class = "tumours";
      pdx = false;
      r1 = "f6/Z9/SHA256E-s3745953929--02094a499c303e4d27bfd32416ea39860398f8ad04eb14b9931767833fc21556.gz/SHA256E-s3745953929--02094a499c303e4d27bfd32416ea39860398f8ad04eb14b9931767833fc21556.gz";
      r2 = "9G/Jk/SHA256E-s4035149882--ee4364b6450d433b9b13dc66180896fe80eae8f5e216dafae9668ca88169d767.gz/SHA256E-s4035149882--ee4364b6450d433b9b13dc66180896fe80eae8f5e216dafae9668ca88169d767.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    redcap = {
      date_of_death = "11/2021";
      d_case_summary = "4 primaries: breast ca, uterine carcinosarcoma, bowel ca, low grade mucinous ca of appendix; tubular adenoma\nLast PMCC notes 20/2/2018, no future bookings";
      date_consented = "2017-09-28";
      tumour_type = "Endometrial carcinosarcoma";
      tumour_details = "breast ca, uterine MMT/carcinosarcoma, bowel ca, low grade mucinous ca of appendix, tubular adenoma";
      patient_information_complete = "Incomplete";
      neoantigen_analysis_yes_no = "Yes";
      receipt_eyebrow_hairs_complete = "Incomplete";
      multiple_primary_project = "Yes";
      block_recall_history = "UMMT tissue re-requested from Monash via Email on 27072020 by Josh for Kirsty\n\n2001 block A5 received 24/08/2020 by Josh";
      mp_subgroup_sfrcp4_new_id = "3 or more primary";
      patient_alive = "No";
    };
    aligner = "minimap2";
    inherit samples;
    predictNeoantigens = true;
    name = "SFRC01057";
    capture = CREv2;
  }
