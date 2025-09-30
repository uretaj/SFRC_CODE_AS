with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "Wx/7x/SHA256E-s3027506889--255d396176eb3f9a630beaa1b83b6d9bb616c5cfe469f22bf03dced0afdd912e.gz/SHA256E-s3027506889--255d396176eb3f9a630beaa1b83b6d9bb616c5cfe469f22bf03dced0afdd912e.gz";
      r2 = "XK/vv/SHA256E-s3066518668--b657189c4ad443820a43c5b9e95b8e5bf376f23b9f7a340c8388142190816939.gz/SHA256E-s3066518668--b657189c4ad443820a43c5b9e95b8e5bf376f23b9f7a340c8388142190816939.gz";
    }
    {
      site = "B1";
      class = "normals";
      pdx = false;
      r1 = "z9/1K/SHA256E-s3080860283--62f4961cd0b124c1e1bf785edb042f6039d722eccd2779ba2b9c756792fd3d68.gz/SHA256E-s3080860283--62f4961cd0b124c1e1bf785edb042f6039d722eccd2779ba2b9c756792fd3d68.gz";
      r2 = "VW/7q/SHA256E-s3120053596--88af94ad65150a6d873fd1c67787e49fff5873b5a3c8a8c86f7992b91b38f38f.gz/SHA256E-s3120053596--88af94ad65150a6d873fd1c67787e49fff5873b5a3c8a8c86f7992b91b38f38f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    capture = TWISTv2;
    umi = true;
    name = "CCV29515";
  }
