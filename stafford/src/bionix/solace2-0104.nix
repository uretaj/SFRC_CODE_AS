with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "xV/33/SHA256E-s2074778017--71091767048f50f50b7f58693adf49e8f55f61e17f10852a3438ba6c2c8d198b.gz/SHA256E-s2074778017--71091767048f50f50b7f58693adf49e8f55f61e17f10852a3438ba6c2c8d198b.gz";
      r2 = "43/fK/SHA256E-s2105644519--da689a9f3ed34e40aad1ece07f1007e312175ec96919edf17ef486c34488dd21.gz/SHA256E-s2105644519--da689a9f3ed34e40aad1ece07f1007e312175ec96919edf17ef486c34488dd21.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "97/Xm/SHA256E-s2172938657--6d78586b9c2092de8b893a1501116cc23f55c5757a3845cd3f9227665606aa3c.gz/SHA256E-s2172938657--6d78586b9c2092de8b893a1501116cc23f55c5757a3845cd3f9227665606aa3c.gz";
      r2 = "49/m9/SHA256E-s2197108875--6b99a103f0f3d2bdefe52b845fb6768cf59745240f212a3d80e89cdec471ba1d.gz/SHA256E-s2197108875--6b99a103f0f3d2bdefe52b845fb6768cf59745240f212a3d80e89cdec471ba1d.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "GP/v0/SHA256E-s2187205103--2f54d44d54a833f357d0b2507be88836a8a5ecc36a80e506c610f75383913f90.gz/SHA256E-s2187205103--2f54d44d54a833f357d0b2507be88836a8a5ecc36a80e506c610f75383913f90.gz";
      r2 = "GM/4V/SHA256E-s2204799225--ed6b37dc22b934b4baa972f79afe216bbc26b846426e80ca209210defc151bac.gz/SHA256E-s2204799225--ed6b37dc22b934b4baa972f79afe216bbc26b846426e80ca209210defc151bac.gz";
    }

    {
      site = "A8";
      class = "tumours";
      pdx = false;
      r1 = "VX/KZ/SHA256E-s2119757891--2462b71479caf2033e4e01f89844b3f34ba48af7302cf6e32ec21dbdba1d4545.gz/SHA256E-s2119757891--2462b71479caf2033e4e01f89844b3f34ba48af7302cf6e32ec21dbdba1d4545.gz";
      r2 = "Mx/kk/SHA256E-s2137583811--eb9d4d39ca6bb1c8f18d676edb8f07c6793b1425edb838c17a34f74db9d7edb7.gz/SHA256E-s2137583811--eb9d4d39ca6bb1c8f18d676edb8f07c6793b1425edb838c17a34f74db9d7edb7.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "F2/PW/SHA256E-s1209923244--62a8693a270063eee35922f15ed3b93c5fb2c74572bc849792b4afb062742c46.gz/SHA256E-s1209923244--62a8693a270063eee35922f15ed3b93c5fb2c74572bc849792b4afb062742c46.gz";
      r2 = "P5/v2/SHA256E-s1210199509--0f61e7f6ffc687887e0792f831d95436680721324f6ebe11b9be5c8f06f72e74.gz/SHA256E-s1210199509--0f61e7f6ffc687887e0792f831d95436680721324f6ebe11b9be5c8f06f72e74.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "09/qm/SHA256E-s1219396894--bdfcea7bfe8a93d1b39b8c70b8def0e0a802d9f4eaf7a0b1a4cfa8b828f1d650.gz/SHA256E-s1219396894--bdfcea7bfe8a93d1b39b8c70b8def0e0a802d9f4eaf7a0b1a4cfa8b828f1d650.gz";
      r2 = "mk/45/SHA256E-s1218010165--2132ad8036435f876e99f0dbfc0480c82f159c00cdacc7ba7328d84aa0d4c8ef.gz/SHA256E-s1218010165--2132ad8036435f876e99f0dbfc0480c82f159c00cdacc7ba7328d84aa0d4c8ef.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "05/WP/SHA256E-s1215271549--fb3c6516b153f43a41be008cce8327abfd5fc7a662dd96f56aeb7e1cf6fa0902.gz/SHA256E-s1215271549--fb3c6516b153f43a41be008cce8327abfd5fc7a662dd96f56aeb7e1cf6fa0902.gz";
      r2 = "8k/ZX/SHA256E-s1208964783--d24df39b421d238bf678470d231661ab09b5f77e2df7eae103085c029e56377a.gz/SHA256E-s1208964783--d24df39b421d238bf678470d231661ab09b5f77e2df7eae103085c029e56377a.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0104";
    typeHla = true;
    capture = TwistV2HR;
  }
