with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "5j/3w/SHA256E-s650830559--ffc87793814dea30d115ec2da46d75d2d3aa0d7225de0fa300e7a2ff9a6e1850.gz/SHA256E-s650830559--ffc87793814dea30d115ec2da46d75d2d3aa0d7225de0fa300e7a2ff9a6e1850.gz";
      r2 = "F9/9j/SHA256E-s655913606--5a49116ac176f23605f40caddf62e8486737a3a11f91face394c0148d867abcc.gz/SHA256E-s655913606--5a49116ac176f23605f40caddf62e8486737a3a11f91face394c0148d867abcc.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Gv/6J/SHA256E-s654369569--96aa233afe8d60bd46b90cd93de928bb07913dbfa17b0d103f5714b5311ffd70.gz/SHA256E-s654369569--96aa233afe8d60bd46b90cd93de928bb07913dbfa17b0d103f5714b5311ffd70.gz";
      r2 = "q0/90/SHA256E-s663878055--548bff51a7356db5c62c73f1b955dc57a07e15e4ed98171b96bd23ea3d0149e7.gz/SHA256E-s663878055--548bff51a7356db5c62c73f1b955dc57a07e15e4ed98171b96bd23ea3d0149e7.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "0g/0J/SHA256E-s648873606--d7a3c280333e350e929cfac95f26c426e3859f3df87933015df8fbdb5423ea93.gz/SHA256E-s648873606--d7a3c280333e350e929cfac95f26c426e3859f3df87933015df8fbdb5423ea93.gz";
      r2 = "mq/9F/SHA256E-s656284100--379432c7a69a497083713ceace6e6629db87bba1ed5632f255e8b7def8d97145.gz/SHA256E-s656284100--379432c7a69a497083713ceace6e6629db87bba1ed5632f255e8b7def8d97145.gz";
    }

    {
      site = "BL";
      class = "normals";
      pdx = false;
      r1 = "Fk/1G/SHA256E-s691481599--ea58c1040530fce73b5b186ed65d40c0e01b38c397ca855dbfe6e9b4b5ed40ec.gz/SHA256E-s691481599--ea58c1040530fce73b5b186ed65d40c0e01b38c397ca855dbfe6e9b4b5ed40ec.gz";
      r2 = "Z8/pP/SHA256E-s704357348--0183b68c53eb588b0751cd5466008d9602d009151ddb21db371c73c149d295b4.gz/SHA256E-s704357348--0183b68c53eb588b0751cd5466008d9602d009151ddb21db371c73c149d295b4.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "Fj/w4/SHA256E-s584291036--9be18a04776c9568f48b1af81c856401f1da0a5d67a62a009dffd6ecc75124d8.gz/SHA256E-s584291036--9be18a04776c9568f48b1af81c856401f1da0a5d67a62a009dffd6ecc75124d8.gz";
      r2 = "1w/gk/SHA256E-s593006534--910d105afe050f7748e7ce41c6ae424bf34c30fe60478dcca299f2a372f49d4b.gz/SHA256E-s593006534--910d105afe050f7748e7ce41c6ae424bf34c30fe60478dcca299f2a372f49d4b.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "0M/MM/SHA256E-s607857748--2ca238e4e3a1f6a0dc1dc1b48bf82187e21b2a651bde9c3457fd5b53b39e0063.gz/SHA256E-s607857748--2ca238e4e3a1f6a0dc1dc1b48bf82187e21b2a651bde9c3457fd5b53b39e0063.gz";
      r2 = "jm/5P/SHA256E-s618600575--26516ca993ffb20b2c5e477d441fba2a4c5aac778911294f6965345b0893cee9.gz/SHA256E-s618600575--26516ca993ffb20b2c5e477d441fba2a4c5aac778911294f6965345b0893cee9.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "p6/4J/SHA256E-s614472336--345e265307fbd0dd0e0022f91769f129a2566db1d6f0e7edd1af6f7f9b539cb3.gz/SHA256E-s614472336--345e265307fbd0dd0e0022f91769f129a2566db1d6f0e7edd1af6f7f9b539cb3.gz";
      r2 = "q1/j9/SHA256E-s626020982--6f49cec59e42f1cedf8f8f7b1ba592eda68fa0ba3781623b2efedf2d394c7bc5.gz/SHA256E-s626020982--6f49cec59e42f1cedf8f8f7b1ba592eda68fa0ba3781623b2efedf2d394c7bc5.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "Pw/49/SHA256E-s618847129--20f2e1075806a63696ee2ce799ce0d76bd2aee69d11e2d9bd30b71b473c542e5.gz/SHA256E-s618847129--20f2e1075806a63696ee2ce799ce0d76bd2aee69d11e2d9bd30b71b473c542e5.gz";
      r2 = "gf/zX/SHA256E-s629804041--8ec09a7428a35485807688408e6bb415a7b24d5e80ed9f0e1dc242fc5eb6b0d4.gz/SHA256E-s629804041--8ec09a7428a35485807688408e6bb415a7b24d5e80ed9f0e1dc242fc5eb6b0d4.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "gk/WK/SHA256E-s627960008--0943a07b08310d36b3a98bf71d43fb441ae7f4beddadf65cdbf3f2f403bc704f.gz/SHA256E-s627960008--0943a07b08310d36b3a98bf71d43fb441ae7f4beddadf65cdbf3f2f403bc704f.gz";
      r2 = "Wm/27/SHA256E-s639400512--b9babd18a80a736d9d0f2cdf06dd29b5d3668f3906ae34529af8665aa7156ea5.gz/SHA256E-s639400512--b9babd18a80a736d9d0f2cdf06dd29b5d3668f3906ae34529af8665aa7156ea5.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "66/X9/SHA256E-s641320442--acd0124c0f29b316dd96c27085ebd4012de9ffd0ef609e2a59ea60b4bd45e6a2.gz/SHA256E-s641320442--acd0124c0f29b316dd96c27085ebd4012de9ffd0ef609e2a59ea60b4bd45e6a2.gz";
      r2 = "7V/vZ/SHA256E-s650438150--d5fad7efa7b14248e7573d51bc3ca554f80a723d1f1c46f13914ac9b6b3d37be.gz/SHA256E-s650438150--d5fad7efa7b14248e7573d51bc3ca554f80a723d1f1c46f13914ac9b6b3d37be.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "0K/6w/SHA256E-s623858202--58d8236a47d4fa762f45f790be9cba24990391b696a16bd58f489b51e9a48fd9.gz/SHA256E-s623858202--58d8236a47d4fa762f45f790be9cba24990391b696a16bd58f489b51e9a48fd9.gz";
      r2 = "X1/9j/SHA256E-s634830566--26b12033ceb5639e0b9830352ec7ff3c33e10523a4f666ff94f10f52318c5455.gz/SHA256E-s634830566--26b12033ceb5639e0b9830352ec7ff3c33e10523a4f666ff94f10f52318c5455.gz";
    }

    {
      site = "OD";
      class = "tumours";
      pdx = false;
      r1 = "Qg/16/SHA256E-s623535564--87dd3eb9f8978b2ef03ec227dda16c677989949dd4fd4ac031957088dc2bf079.gz/SHA256E-s623535564--87dd3eb9f8978b2ef03ec227dda16c677989949dd4fd4ac031957088dc2bf079.gz";
      r2 = "Z1/4M/SHA256E-s631408596--8766b90937bf163a8a68b2c2a1c91a5b1c683d3eaabb01daedbcd1a38fdc8639.gz/SHA256E-s631408596--8766b90937bf163a8a68b2c2a1c91a5b1c683d3eaabb01daedbcd1a38fdc8639.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "EMBRACE17";
    capture = TwistV2HR;
  }
