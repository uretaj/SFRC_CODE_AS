with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A5-A6";
      class = "tumours";
      pdx = false;
      r1 = "g3/xJ/SHA256E-s1765429331--c00afe9badde49088a7e24aee20ba98a4edb5fe94ea230a8b77daebcabe41f94.gz/SHA256E-s1765429331--c00afe9badde49088a7e24aee20ba98a4edb5fe94ea230a8b77daebcabe41f94.gz";
      r2 = "Vk/zZ/SHA256E-s1796679859--144e8645971c3867c51180c2b9384fdc2328d98463c2bd16b6c054ce498ffb56.gz/SHA256E-s1796679859--144e8645971c3867c51180c2b9384fdc2328d98463c2bd16b6c054ce498ffb56.gz";
    }

    {
      site = "A5-A6";
      class = "tumours";
      pdx = false;
      r1 = "VQ/5X/SHA256E-s1770614383--c436b23d21baed3fc15ecd1cec22b021cf7534f515e8a80a111acd0bd1e7eadb.gz/SHA256E-s1770614383--c436b23d21baed3fc15ecd1cec22b021cf7534f515e8a80a111acd0bd1e7eadb.gz";
      r2 = "p5/Qf/SHA256E-s1794141152--fdf171f103c5f4bc7264d36d01cd054f72cd2f2fb33991717c85a5c757297925.gz/SHA256E-s1794141152--fdf171f103c5f4bc7264d36d01cd054f72cd2f2fb33991717c85a5c757297925.gz";
    }

    {
      site = "A5-A6";
      class = "tumours";
      pdx = false;
      r1 = "MG/2Q/SHA256E-s1777306649--5207725ba3fee6900b86dc32331d52e28d31fd4adaf17176caed4775c763f29a.gz/SHA256E-s1777306649--5207725ba3fee6900b86dc32331d52e28d31fd4adaf17176caed4775c763f29a.gz";
      r2 = "kP/QX/SHA256E-s1796031807--8d22d5de4d85dfe7b59e45f5513113bc0e3916db7fbeaa5908815ed1a4bd6fe6.gz/SHA256E-s1796031807--8d22d5de4d85dfe7b59e45f5513113bc0e3916db7fbeaa5908815ed1a4bd6fe6.gz";
    }

    {
      site = "A5-A6";
      class = "tumours";
      pdx = false;
      r1 = "59/Vw/SHA256E-s1747947943--ef698419366df6ad18d6dab37e8d94f8b92ad5a94bbcf5ddf5e02f33c5cc66d8.gz/SHA256E-s1747947943--ef698419366df6ad18d6dab37e8d94f8b92ad5a94bbcf5ddf5e02f33c5cc66d8.gz";
      r2 = "gG/20/SHA256E-s1766272571--f6072341bfe05ce047a34597050e528da39f3bb3853c3c5055b2f4032b83acb8.gz/SHA256E-s1766272571--f6072341bfe05ce047a34597050e528da39f3bb3853c3c5055b2f4032b83acb8.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "fM/Q8/SHA256E-s942698506--6b8c75ae7585ba5bb41d8a176329851d2e5bb690fa30277ec10e780e1cf10a98.gz/SHA256E-s942698506--6b8c75ae7585ba5bb41d8a176329851d2e5bb690fa30277ec10e780e1cf10a98.gz";
      r2 = "39/Z2/SHA256E-s941428448--9c33dba61ce21248755ce9ba623ab7e69ef97bdfe08c7ae1588bf9c6b326de63.gz/SHA256E-s941428448--9c33dba61ce21248755ce9ba623ab7e69ef97bdfe08c7ae1588bf9c6b326de63.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "p3/G3/SHA256E-s952103946--bba3cfeecbf57509b621b4a4dc3a7af33d1182d2c093333b755f41ff96d25ad4.gz/SHA256E-s952103946--bba3cfeecbf57509b621b4a4dc3a7af33d1182d2c093333b755f41ff96d25ad4.gz";
      r2 = "kJ/qZ/SHA256E-s949789184--3c67312c71142c5fc21eda3376f25efaab591c8c03e6e7f961a5dd9b9c5badc0.gz/SHA256E-s949789184--3c67312c71142c5fc21eda3376f25efaab591c8c03e6e7f961a5dd9b9c5badc0.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "G7/FJ/SHA256E-s951008066--4948d6249f1d7c47a0377497c40085c8983cb0690a8c696c4321fffe873d0a1a.gz/SHA256E-s951008066--4948d6249f1d7c47a0377497c40085c8983cb0690a8c696c4321fffe873d0a1a.gz";
      r2 = "FP/3g/SHA256E-s944679839--9683d20ae28ff48749cf65210a9a89fa5e820e4c88f15e30806b157f68710196.gz/SHA256E-s944679839--9683d20ae28ff48749cf65210a9a89fa5e820e4c88f15e30806b157f68710196.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0040";
    typeHla = true;
    capture = TwistV2HR;
  }
