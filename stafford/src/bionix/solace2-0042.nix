with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "B3";
      class = "tumours";
      pdx = false;
      r1 = "GM/FV/SHA256E-s4879964626--30dbdb356bd696a73dfde6d5c59f26b711a0d68d46a5383ef2409ebc228a0a21.gz/SHA256E-s4879964626--30dbdb356bd696a73dfde6d5c59f26b711a0d68d46a5383ef2409ebc228a0a21.gz";
      r2 = "Xz/p8/SHA256E-s4899303505--aea7f00fae0c7211fa49d363a6776b2fd6c0ad690de23152d06542cbb4446e54.gz/SHA256E-s4899303505--aea7f00fae0c7211fa49d363a6776b2fd6c0ad690de23152d06542cbb4446e54.gz";
    }
    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "jq/Pz/SHA256E-s516771803--db49c67d378ce926a93bd493ff9e6b09da87f7d12f9243a3d26f878cd3ec2f23.gz/SHA256E-s516771803--db49c67d378ce926a93bd493ff9e6b09da87f7d12f9243a3d26f878cd3ec2f23.gz";
      r2 = "f1/32/SHA256E-s514507047--9c72bfea29580a25bebdec098f4fb270f09f3ff7350c559222c28a534aaf207d.gz/SHA256E-s514507047--9c72bfea29580a25bebdec098f4fb270f09f3ff7350c559222c28a534aaf207d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Xp/QM/SHA256E-s518055519--7d23f979adffeb303d4223f38e276c4cbf1276dbbbba2023d8e6f57b33f5c497.gz/SHA256E-s518055519--7d23f979adffeb303d4223f38e276c4cbf1276dbbbba2023d8e6f57b33f5c497.gz";
      r2 = "vV/38/SHA256E-s518944734--42de7fb537306ae4a1eeddeab704c1d3677cf9ba30fe94a537a8dafda8ddb775.gz/SHA256E-s518944734--42de7fb537306ae4a1eeddeab704c1d3677cf9ba30fe94a537a8dafda8ddb775.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Q3/km/SHA256E-s511764195--9580c94b99d2ed63dbd2794fee71e69c328aedb61f5be981e506951be356ed93.gz/SHA256E-s511764195--9580c94b99d2ed63dbd2794fee71e69c328aedb61f5be981e506951be356ed93.gz";
      r2 = "vq/80/SHA256E-s511110218--ae2b34f9ff943cba4e0644c56750aa7aa5d591830aaa88441792f06e38573c0b.gz/SHA256E-s511110218--ae2b34f9ff943cba4e0644c56750aa7aa5d591830aaa88441792f06e38573c0b.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Vp/kK/SHA256E-s525358038--efd8bde41c5d7fc584e701b448308dffcfde8dea96e53cdab3909e8ced4e00c9.gz/SHA256E-s525358038--efd8bde41c5d7fc584e701b448308dffcfde8dea96e53cdab3909e8ced4e00c9.gz";
      r2 = "3m/Kg/SHA256E-s527386063--cf473dce94503fc417d6b19cbcd76440416ffb96b3e0d0c762d8919aebd72e48.gz/SHA256E-s527386063--cf473dce94503fc417d6b19cbcd76440416ffb96b3e0d0c762d8919aebd72e48.gz";
    }
    {
      site = "B3";
      class = "tumours";
      pdx = false;
      r1 = "Wg/WF/SHA256E-s10184506304--fa79c92df973347e4a5bbc287d9155e07da962eeb8ef4c87cb7ce9b1e0c3d613.gz/SHA256E-s10184506304--fa79c92df973347e4a5bbc287d9155e07da962eeb8ef4c87cb7ce9b1e0c3d613.gz";
      r2 = "VV/Qf/SHA256E-s10208841048--4ddab199b79600014160572772b3c677ca2d2bc55cc7fa079cc14de161f81c91.gz/SHA256E-s10208841048--4ddab199b79600014160572772b3c677ca2d2bc55cc7fa079cc14de161f81c91.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0042";
    typeHla = true;
    capture = TwistV2HR;
  }
