with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "z1/wF/SHA256E-s880148174--23d23120919a51ce7cb8deaa8b157bb34c6cab3f2b47b1eedb697aa345c11749.gz/SHA256E-s880148174--23d23120919a51ce7cb8deaa8b157bb34c6cab3f2b47b1eedb697aa345c11749.gz";
      r2 = "kq/j7/SHA256E-s877361532--296bf3feab3a8013bbf9e2c63f7fb76d11834ae47de25efa6af24cd2cda39a28.gz/SHA256E-s877361532--296bf3feab3a8013bbf9e2c63f7fb76d11834ae47de25efa6af24cd2cda39a28.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "Mx/23/SHA256E-s922034109--81118c3a0a3aad5a3374cb2fbafd4d16f1031525e6532a89771b80ae085864cb.gz/SHA256E-s922034109--81118c3a0a3aad5a3374cb2fbafd4d16f1031525e6532a89771b80ae085864cb.gz";
      r2 = "MM/GK/SHA256E-s921561687--0604a9f17c036bcf04f7c105ae3e39e44e594083de0fe6e63aa5be9058700124.gz/SHA256E-s921561687--0604a9f17c036bcf04f7c105ae3e39e44e594083de0fe6e63aa5be9058700124.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "ZV/5g/SHA256E-s917573139--4db77edda925853db29856c317f56e1026a21ca3d81d2e851beb66b4f68efa85.gz/SHA256E-s917573139--4db77edda925853db29856c317f56e1026a21ca3d81d2e851beb66b4f68efa85.gz";
      r2 = "qq/xq/SHA256E-s918211446--ce4c9a061a316d8219fcae970afcf067afc6ab8535130c6fadc3d03957e81d30.gz/SHA256E-s918211446--ce4c9a061a316d8219fcae970afcf067afc6ab8535130c6fadc3d03957e81d30.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "MW/X2/SHA256E-s918263172--0877ec1bb6927c10821bd83bbf58255a2015cf58268e9eca7410e46fe4f4e592.gz/SHA256E-s918263172--0877ec1bb6927c10821bd83bbf58255a2015cf58268e9eca7410e46fe4f4e592.gz";
      r2 = "vK/kj/SHA256E-s917954919--beebf44039f51c44118c9de0c255c0e745ce985c21473c3a16b145c65a74965c.gz/SHA256E-s917954919--beebf44039f51c44118c9de0c255c0e745ce985c21473c3a16b145c65a74965c.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "Gk/Z3/SHA256E-s948791895--c61b70a43ff1f05f9061de216a354f5fbe40a9a456bd2b0734891b3b40e0ba44.gz/SHA256E-s948791895--c61b70a43ff1f05f9061de216a354f5fbe40a9a456bd2b0734891b3b40e0ba44.gz";
      r2 = "Jq/Fk/SHA256E-s949070859--ef897603798e4f6700c24fee69fdb8a67985c5119da9a2b15c71d22b5ae2634f.gz/SHA256E-s949070859--ef897603798e4f6700c24fee69fdb8a67985c5119da9a2b15c71d22b5ae2634f.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "vK/M1/SHA256E-s932852692--1475a78d33c8627469629dcbf7e537ff7c447e39b42cfaee5d577e78830b46a8.gz/SHA256E-s932852692--1475a78d33c8627469629dcbf7e537ff7c447e39b42cfaee5d577e78830b46a8.gz";
      r2 = "6Z/35/SHA256E-s930061702--60cb73966f23a095058f6f877312409afaed07dd3a20cdcd0a8d28ef22bf2cd1.gz/SHA256E-s930061702--60cb73966f23a095058f6f877312409afaed07dd3a20cdcd0a8d28ef22bf2cd1.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "PQ/QW/SHA256E-s951892113--5f78e2a1d1af207620ab6364ad89e5d1aa9977e4fc12e6878dc0255e6ee985f1.gz/SHA256E-s951892113--5f78e2a1d1af207620ab6364ad89e5d1aa9977e4fc12e6878dc0255e6ee985f1.gz";
      r2 = "x0/1Q/SHA256E-s951683222--5acb2f0540af39799f193c7da9e9c5a122918a3a2f61f28be48e71f6e1225208.gz/SHA256E-s951683222--5acb2f0540af39799f193c7da9e9c5a122918a3a2f61f28be48e71f6e1225208.gz";
    }

    {
      site = "1E";
      class = "tumours";
      pdx = false;
      r1 = "p9/xJ/SHA256E-s899645643--f752008c5a8e19f0fc703e8c57dfb39e61c5cbdf8b3a9edccd656dd87f369a89.gz/SHA256E-s899645643--f752008c5a8e19f0fc703e8c57dfb39e61c5cbdf8b3a9edccd656dd87f369a89.gz";
      r2 = "KP/QQ/SHA256E-s895456689--576afa2b85a7f0cc9d8e94d3bdacf223272821fd8a00b5a3a9cf39bccd6d6f60.gz/SHA256E-s895456689--576afa2b85a7f0cc9d8e94d3bdacf223272821fd8a00b5a3a9cf39bccd6d6f60.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kG/WX/SHA256E-s747230957--47db4ce4e327c393f32670fd4e8ba9493dd06eaddc8c8d8deafb214188903567.gz/SHA256E-s747230957--47db4ce4e327c393f32670fd4e8ba9493dd06eaddc8c8d8deafb214188903567.gz";
      r2 = "xw/8f/SHA256E-s750170003--bb5f86804e6e2184eee53e57fab842af4ebf46c5b9d1e9bc20840379357ab070.gz/SHA256E-s750170003--bb5f86804e6e2184eee53e57fab842af4ebf46c5b9d1e9bc20840379357ab070.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k8/FQ/SHA256E-s752469509--d070532f421eae6db1e601cd104f25a541e623d0d304dae8e0278bb2f905a719.gz/SHA256E-s752469509--d070532f421eae6db1e601cd104f25a541e623d0d304dae8e0278bb2f905a719.gz";
      r2 = "KP/ZJ/SHA256E-s760522519--fb3f1c1511ff6f54ddc199da83686a437a0863af9a719b833ffdbfc2d76faa0a.gz/SHA256E-s760522519--fb3f1c1511ff6f54ddc199da83686a437a0863af9a719b833ffdbfc2d76faa0a.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "kg/76/SHA256E-s741969476--eebf1a6208d5dba2ccc03da3b2a42af78476e6859e819c4d1067449f60b10f8b.gz/SHA256E-s741969476--eebf1a6208d5dba2ccc03da3b2a42af78476e6859e819c4d1067449f60b10f8b.gz";
      r2 = "45/VV/SHA256E-s747715848--4b5784e51e1f62e0f7e42f9571689db8f2be5e3eb56ec345133c48481b8dd3ef.gz/SHA256E-s747715848--4b5784e51e1f62e0f7e42f9571689db8f2be5e3eb56ec345133c48481b8dd3ef.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "W5/wW/SHA256E-s787314159--a2c1f104c4e92320e16153b89c50011eee0dd4072020ddcac3c41a1c410b7386.gz/SHA256E-s787314159--a2c1f104c4e92320e16153b89c50011eee0dd4072020ddcac3c41a1c410b7386.gz";
      r2 = "q8/qZ/SHA256E-s799124162--2f237ad549320a18391834228679e3d7faa5e7b7a593aa956e315e1b861379f2.gz/SHA256E-s799124162--2f237ad549320a18391834228679e3d7faa5e7b7a593aa956e315e1b861379f2.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0029";
    typeHla = true;
    capture = TwistV2HR;
  }
