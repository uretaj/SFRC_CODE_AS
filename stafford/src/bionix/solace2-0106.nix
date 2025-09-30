with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "qk/vJ/SHA256E-s700691722--a1f08f381f3423d1db6c5616b1a66e150a83de6ef9596ae501f486a45ede4e1a.gz/SHA256E-s700691722--a1f08f381f3423d1db6c5616b1a66e150a83de6ef9596ae501f486a45ede4e1a.gz";
      r2 = "0z/pz/SHA256E-s700007457--027a9ea90d2333373eb07bf7241321105cb7119f6793d4166a5209f031bbb4e7.gz/SHA256E-s700007457--027a9ea90d2333373eb07bf7241321105cb7119f6793d4166a5209f031bbb4e7.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "mw/kx/SHA256E-s719836193--9dbad36067e2956a8f46f12c79cbfbe96afa4f997e01721a33dec86c9ca6a8b7.gz/SHA256E-s719836193--9dbad36067e2956a8f46f12c79cbfbe96afa4f997e01721a33dec86c9ca6a8b7.gz";
      r2 = "kk/m9/SHA256E-s721151407--547c9d88036155f7deae353b38fb9548cab0ddc8a36263052fadc910b3c69ce7.gz/SHA256E-s721151407--547c9d88036155f7deae353b38fb9548cab0ddc8a36263052fadc910b3c69ce7.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "4m/qg/SHA256E-s711642666--4291b9457659457a710c229b8c250f00c9f1699fb84cffc47f4f514e77663aa0.gz/SHA256E-s711642666--4291b9457659457a710c229b8c250f00c9f1699fb84cffc47f4f514e77663aa0.gz";
      r2 = "8m/P4/SHA256E-s713962206--82e93ccc7356009eab0cbf81c29bb315f0e47ccf54975ccd3642875ada1e8e8a.gz/SHA256E-s713962206--82e93ccc7356009eab0cbf81c29bb315f0e47ccf54975ccd3642875ada1e8e8a.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "ZW/09/SHA256E-s705057306--dd4569f61878cfa38910da9dfdbaefd73bb1338e9c9b7636c7a659abbf941822.gz/SHA256E-s705057306--dd4569f61878cfa38910da9dfdbaefd73bb1338e9c9b7636c7a659abbf941822.gz";
      r2 = "WM/p7/SHA256E-s706697796--296a2483e2dd0f6682e514bdff0eea6436c4bb14101bf1014904c763d8c326fa.gz/SHA256E-s706697796--296a2483e2dd0f6682e514bdff0eea6436c4bb14101bf1014904c763d8c326fa.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "q4/7M/SHA256E-s728986798--a6d9e627cba463bdc8d5624e5c4eaec8cc69eb5d7b4c7e0d94cfe5e5474143fd.gz/SHA256E-s728986798--a6d9e627cba463bdc8d5624e5c4eaec8cc69eb5d7b4c7e0d94cfe5e5474143fd.gz";
      r2 = "31/8z/SHA256E-s731197227--5e73ff79a7c65dedb708bdccb835781d4819fbd5c75d825cae067e1420d2d060.gz/SHA256E-s731197227--5e73ff79a7c65dedb708bdccb835781d4819fbd5c75d825cae067e1420d2d060.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "3Z/80/SHA256E-s720740305--3d918c15982fea8c0e89e2abc99ab45ad54ff60bbc1e75adf5548abb02667fd0.gz/SHA256E-s720740305--3d918c15982fea8c0e89e2abc99ab45ad54ff60bbc1e75adf5548abb02667fd0.gz";
      r2 = "36/Pm/SHA256E-s720175155--b9c2b4935990ddbd7d1d1dc91c7a4a37e7e3e7e8915e4cc2021650ad62ecde76.gz/SHA256E-s720175155--b9c2b4935990ddbd7d1d1dc91c7a4a37e7e3e7e8915e4cc2021650ad62ecde76.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "62/35/SHA256E-s735360730--eb97e687142492a96171dc032b81abcb964f87f89fe7f0f24342a4e284d58bbb.gz/SHA256E-s735360730--eb97e687142492a96171dc032b81abcb964f87f89fe7f0f24342a4e284d58bbb.gz";
      r2 = "WK/8Z/SHA256E-s737126847--3c13e962437c5b85d0e9e0779df96a9642a2bbcd2c569f4ef3dd6765dd91c5eb.gz/SHA256E-s737126847--3c13e962437c5b85d0e9e0779df96a9642a2bbcd2c569f4ef3dd6765dd91c5eb.gz";
    }

    {
      site = "3B";
      class = "tumours";
      pdx = false;
      r1 = "5z/QP/SHA256E-s706547584--e702bdf2cb2043a4d180e173524518251971f9ef03106c7b94cf9ed3912396fb.gz/SHA256E-s706547584--e702bdf2cb2043a4d180e173524518251971f9ef03106c7b94cf9ed3912396fb.gz";
      r2 = "vW/1f/SHA256E-s705032863--897e7d4fd32877736df17af66abc56066b953dc289b64f83c1d9d75b37cdc26a.gz/SHA256E-s705032863--897e7d4fd32877736df17af66abc56066b953dc289b64f83c1d9d75b37cdc26a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "FP/zz/SHA256E-s763878209--215af065d0ceac0936092ae500092bb30a3395ec1234340c1e8dc8d87c2a43b7.gz/SHA256E-s763878209--215af065d0ceac0936092ae500092bb30a3395ec1234340c1e8dc8d87c2a43b7.gz";
      r2 = "m3/9P/SHA256E-s776814525--238458644952efd44a6de899c33894089a9db213af4d8719bdab2cb606d12e7d.gz/SHA256E-s776814525--238458644952efd44a6de899c33894089a9db213af4d8719bdab2cb606d12e7d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "VV/j2/SHA256E-s768589533--539cebf81276355c1a69c4a1c323235c4610dba652ba90e3edcd244910ee2fe5.gz/SHA256E-s768589533--539cebf81276355c1a69c4a1c323235c4610dba652ba90e3edcd244910ee2fe5.gz";
      r2 = "f3/Fm/SHA256E-s779516461--0418ec7b96a7c42eca29d25d431b009787914c2b168a7d68b26a3f56d3a4bcdc.gz/SHA256E-s779516461--0418ec7b96a7c42eca29d25d431b009787914c2b168a7d68b26a3f56d3a4bcdc.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "mQ/xQ/SHA256E-s765631662--18b6372632d2d496635c0cdcc1c805c52581e0ffe0021805b35e2869b240b011.gz/SHA256E-s765631662--18b6372632d2d496635c0cdcc1c805c52581e0ffe0021805b35e2869b240b011.gz";
      r2 = "mF/9X/SHA256E-s773062625--f9a8920864db4312354fa9f8d9ec598f40eb8911986e892d6f0c8dc7726e0bfe.gz/SHA256E-s773062625--f9a8920864db4312354fa9f8d9ec598f40eb8911986e892d6f0c8dc7726e0bfe.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0106";
    typeHla = true;
    capture = TwistV2HR;
  }
