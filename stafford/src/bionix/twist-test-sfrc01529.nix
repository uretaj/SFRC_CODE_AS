with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "97/xz/SHA256E-s2584945038--c2d227a64e3834db7b0808b04004a828c979959ddb4033e4f22f13fd068a274b.gz/SHA256E-s2584945038--c2d227a64e3834db7b0808b04004a828c979959ddb4033e4f22f13fd068a274b.gz";
      r2 = "17/51/SHA256E-s2617889707--57b487935bda9e8fe108d05d48bcd13d17e3caec8ae3d43cd78c59c8f16232df.gz/SHA256E-s2617889707--57b487935bda9e8fe108d05d48bcd13d17e3caec8ae3d43cd78c59c8f16232df.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "M0/8z/SHA256E-s2638597524--2ad97164b5f01556f010a778d7d0eabad956ef4882243f8979e863cb232f2699.gz/SHA256E-s2638597524--2ad97164b5f01556f010a778d7d0eabad956ef4882243f8979e863cb232f2699.gz";
      r2 = "5X/wZ/SHA256E-s2683613130--7a1fec4a5105ca1ebbb5ceb6d3b45964cf8dd5236c9ed6c164bbd6d1bb92ebf8.gz/SHA256E-s2683613130--7a1fec4a5105ca1ebbb5ceb6d3b45964cf8dd5236c9ed6c164bbd6d1bb92ebf8.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "qf/0P/SHA256E-s2614488350--411e2bf1ac294e1b10b0b3adc9db65eea11ad2a953ca01cb63b6576e6f4fad07.gz/SHA256E-s2614488350--411e2bf1ac294e1b10b0b3adc9db65eea11ad2a953ca01cb63b6576e6f4fad07.gz";
      r2 = "g6/7M/SHA256E-s2660438752--241efc5d282cbaf085fa8c2709db46242de22fa5ab3a70fb656aba67daef0d9d.gz/SHA256E-s2660438752--241efc5d282cbaf085fa8c2709db46242de22fa5ab3a70fb656aba67daef0d9d.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "jW/Pg/SHA256E-s27242535900--6c7c1e67ba812145380dabaf69d68af97d6f721a7ebbe8b302b7dcccbdc8ccfe.gz/SHA256E-s27242535900--6c7c1e67ba812145380dabaf69d68af97d6f721a7ebbe8b302b7dcccbdc8ccfe.gz";
      r2 = "gZ/fX/SHA256E-s28677923051--c7f5775aa44a3dfff8351286e7ee8daaf0d424a128bfcb0c00e33b63d6979b93.gz/SHA256E-s28677923051--c7f5775aa44a3dfff8351286e7ee8daaf0d424a128bfcb0c00e33b63d6979b93.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      umi = false;
      r1 = "vZ/f0/SHA256E-s34058782126--df6114c8e1c6286b9f7de06d3093ba21230e427243d2b96d7bcae60b554b17dc.gz/SHA256E-s34058782126--df6114c8e1c6286b9f7de06d3093ba21230e427243d2b96d7bcae60b554b17dc.gz";
      r2 = "fM/Pq/SHA256E-s36676518431--7a072a2f91b50a210bf0abfbe748e35c60c59174c0c2995aba8d95d6bcfe3a95.gz/SHA256E-s36676518431--7a072a2f91b50a210bf0abfbe748e35c60c59174c0c2995aba8d95d6bcfe3a95.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SFRC01529-twist-test";
    capture = TwistV2HR;
  }
