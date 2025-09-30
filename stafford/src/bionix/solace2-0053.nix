with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "69/jf/SHA256E-s2012993862--8c5155885a3788cc3cb2afe9b7c0f3391a1621ee8b48fd38eab236133371c5db.gz/SHA256E-s2012993862--8c5155885a3788cc3cb2afe9b7c0f3391a1621ee8b48fd38eab236133371c5db.gz";
      r2 = "36/Pq/SHA256E-s2028222288--3f84d68a5de914187933b03eff3825e432b03e1650706aec1f167d2b0109dcf5.gz/SHA256E-s2028222288--3f84d68a5de914187933b03eff3825e432b03e1650706aec1f167d2b0109dcf5.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "v3/kV/SHA256E-s704244300--82995177b2c977063a104127c3cc71f5cb66472e812017f1d636c368168e0544.gz/SHA256E-s704244300--82995177b2c977063a104127c3cc71f5cb66472e812017f1d636c368168e0544.gz";
      r2 = "Px/G6/SHA256E-s712450734--27d0c91e784f964fc745fcd5cd74ec2e290be357119cd558cc4c6593f30baa48.gz/SHA256E-s712450734--27d0c91e784f964fc745fcd5cd74ec2e290be357119cd558cc4c6593f30baa48.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "0W/kF/SHA256E-s709634803--d12b830950d96d07ad71887b2df3560b21f02007a87d322d425277c3ea37f49e.gz/SHA256E-s709634803--d12b830950d96d07ad71887b2df3560b21f02007a87d322d425277c3ea37f49e.gz";
      r2 = "FK/pX/SHA256E-s722663828--a7b7cf8890477297645f948e57b8e7902c5212fce2e09be1c2fbe348b825174d.gz/SHA256E-s722663828--a7b7cf8890477297645f948e57b8e7902c5212fce2e09be1c2fbe348b825174d.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "vf/26/SHA256E-s701142819--af1fd70f096e47c0d283aa748fb226eaedd9a67f6d2d8bc00193f3d6d88f07c0.gz/SHA256E-s701142819--af1fd70f096e47c0d283aa748fb226eaedd9a67f6d2d8bc00193f3d6d88f07c0.gz";
      r2 = "0w/3M/SHA256E-s712232670--6e419a4dcba7459955790f6de76fc5e7bccd9e511f137529e1a6e20327da8712.gz/SHA256E-s712232670--6e419a4dcba7459955790f6de76fc5e7bccd9e511f137529e1a6e20327da8712.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "k4/gG/SHA256E-s757965281--d01c24ab806165e774f15e98f8121475666dd123ef9364e59ba13e2ba92d7966.gz/SHA256E-s757965281--d01c24ab806165e774f15e98f8121475666dd123ef9364e59ba13e2ba92d7966.gz";
      r2 = "07/33/SHA256E-s775788847--8dac02160f292843d3440857dbec37e7e1e0b042cd3dfca7a676448fe2b086f6.gz/SHA256E-s775788847--8dac02160f292843d3440857dbec37e7e1e0b042cd3dfca7a676448fe2b086f6.gz";
    }
    {
      site = "2C";
      class = "tumours";
      pdx = false;
      r1 = "mG/Z9/SHA256E-s3692386634--f11fe02857e3441746eb1f79261e4d9d7ba8816ffb0cb7a7c3da365e279ea465.gz/SHA256E-s3692386634--f11fe02857e3441746eb1f79261e4d9d7ba8816ffb0cb7a7c3da365e279ea465.gz";
      r2 = "Jq/Vz/SHA256E-s3736491482--a27bfacce32091b2092528846732bc7ef655a3a7520e5a1b5dd55930d72b59f3.gz/SHA256E-s3736491482--a27bfacce32091b2092528846732bc7ef655a3a7520e5a1b5dd55930d72b59f3.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0053";
    typeHla = true;
    capture = TwistV2HR;
  }
