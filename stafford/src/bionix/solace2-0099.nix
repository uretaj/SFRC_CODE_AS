with import ./milton-slurm.nix {}; let
  samples = [
    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "Zj/zM/SHA256E-s851057942--0169d94947689d94e97b2c3b752d86267d4dd06a49793c112a30f03cd781c40a.gz/SHA256E-s851057942--0169d94947689d94e97b2c3b752d86267d4dd06a49793c112a30f03cd781c40a.gz";
      r2 = "p2/92/SHA256E-s853081651--7aa02e166d70dacb89058e1778fe9bf6df952b33b757f620ec42ba17481672c4.gz/SHA256E-s853081651--7aa02e166d70dacb89058e1778fe9bf6df952b33b757f620ec42ba17481672c4.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "4P/kx/SHA256E-s875088092--5d2a1365876869dec741a017b98b4e0ff02bf47541303237ee91d01fabbd6b8e.gz/SHA256E-s875088092--5d2a1365876869dec741a017b98b4e0ff02bf47541303237ee91d01fabbd6b8e.gz";
      r2 = "5j/Xk/SHA256E-s879058953--114c4dbea517d1922998a499331fe8deb786986fa924496a5db6b615e9704b17.gz/SHA256E-s879058953--114c4dbea517d1922998a499331fe8deb786986fa924496a5db6b615e9704b17.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "WJ/3v/SHA256E-s862946442--651ae7f0d8c1444c40fda347fec7de70611308cf5629cfc0f33723745661aaea.gz/SHA256E-s862946442--651ae7f0d8c1444c40fda347fec7de70611308cf5629cfc0f33723745661aaea.gz";
      r2 = "WW/ZJ/SHA256E-s868327635--d8f40fb99e12c30351c104d011372f22f9b172f862622be2cd61c08f6ee6b822.gz/SHA256E-s868327635--d8f40fb99e12c30351c104d011372f22f9b172f862622be2cd61c08f6ee6b822.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "v7/VV/SHA256E-s860980396--0ab17fea433adcf814a48342ed60b232bf0f69ab6528543a8620bba4b20e6578.gz/SHA256E-s860980396--0ab17fea433adcf814a48342ed60b232bf0f69ab6528543a8620bba4b20e6578.gz";
      r2 = "Qg/FQ/SHA256E-s865326971--4c097fcc04ba76e81b3308c0efa87d3e92edd53056f2d5541cf333e6922f97bb.gz/SHA256E-s865326971--4c097fcc04ba76e81b3308c0efa87d3e92edd53056f2d5541cf333e6922f97bb.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "53/QW/SHA256E-s888882228--aee589173d433b7c07c1c0158952d0a148088a73491b143cfbf70391a8a5161a.gz/SHA256E-s888882228--aee589173d433b7c07c1c0158952d0a148088a73491b143cfbf70391a8a5161a.gz";
      r2 = "m6/0J/SHA256E-s893938048--aa960a5a5925795963774bab3bb4abb25e81fb99cbb0b83db234ff0e76b0900e.gz/SHA256E-s893938048--aa960a5a5925795963774bab3bb4abb25e81fb99cbb0b83db234ff0e76b0900e.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "1Z/Q6/SHA256E-s856099468--545a4ddc6df597a530171be441fe4b3db98f20f4ace4132cddeda50317159da5.gz/SHA256E-s856099468--545a4ddc6df597a530171be441fe4b3db98f20f4ace4132cddeda50317159da5.gz";
      r2 = "2g/p2/SHA256E-s858469237--fc747e9028a2efd2573ff9c929dcbf416de1b3603da09eb282e026155dbb4889.gz/SHA256E-s858469237--fc747e9028a2efd2573ff9c929dcbf416de1b3603da09eb282e026155dbb4889.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "zG/9p/SHA256E-s895514550--51f386f10998b31c2b5c530c417403e2ab32c422073a595f50d794f2dbb1034c.gz/SHA256E-s895514550--51f386f10998b31c2b5c530c417403e2ab32c422073a595f50d794f2dbb1034c.gz";
      r2 = "qv/gZ/SHA256E-s900318056--84c8a378760ffffafcc0723e9a78374ce52d78e19a58a7d1fb548fea86ecca80.gz/SHA256E-s900318056--84c8a378760ffffafcc0723e9a78374ce52d78e19a58a7d1fb548fea86ecca80.gz";
    }

    {
      site = "1N";
      class = "tumours";
      pdx = false;
      r1 = "Px/30/SHA256E-s837425169--9ddce1f490e674dedeba1addc48d3ab1f98a4349d0b1e9ca7b0ded551510ea64.gz/SHA256E-s837425169--9ddce1f490e674dedeba1addc48d3ab1f98a4349d0b1e9ca7b0ded551510ea64.gz";
      r2 = "VW/2f/SHA256E-s839037873--7934eda6f364e5ad520fa00e680467d0403a5743293d0740d563fba867dbdb43.gz/SHA256E-s839037873--7934eda6f364e5ad520fa00e680467d0403a5743293d0740d563fba867dbdb43.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "wz/5z/SHA256E-s796704047--5860234c3eb6ad5e72544e8ce007103d0c93095f80873e832e14811802060a93.gz/SHA256E-s796704047--5860234c3eb6ad5e72544e8ce007103d0c93095f80873e832e14811802060a93.gz";
      r2 = "5Q/m0/SHA256E-s802132015--2e69869a33aaa757a1fb63374e34ca5bfd5c04af5ab67ca115a87f9c801aa062.gz/SHA256E-s802132015--2e69869a33aaa757a1fb63374e34ca5bfd5c04af5ab67ca115a87f9c801aa062.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "Wj/4w/SHA256E-s805832236--c377bace412ca5804bf85b45ba32311de23f591b1d8fc4a65998949a9b51cb4f.gz/SHA256E-s805832236--c377bace412ca5804bf85b45ba32311de23f591b1d8fc4a65998949a9b51cb4f.gz";
      r2 = "zP/Wz/SHA256E-s809903859--9c20a81e9da77975d29cf51cdb3ba16240a67b5090e986ba47e38c1156944cd3.gz/SHA256E-s809903859--9c20a81e9da77975d29cf51cdb3ba16240a67b5090e986ba47e38c1156944cd3.gz";
    }

    {
      site = "GL";
      class = "normals";
      pdx = false;
      r1 = "m9/Wg/SHA256E-s810263607--5401dd9710ec2b74c86a0f36beb4e72598f17ec6ba622cb9f89eca05effaeb64.gz/SHA256E-s810263607--5401dd9710ec2b74c86a0f36beb4e72598f17ec6ba622cb9f89eca05effaeb64.gz";
      r2 = "mq/Xx/SHA256E-s810567033--06e77a204dc7c131d4f860ae546e1e89f94896e0eb0352d3d6a1f47bde7a4e2f.gz/SHA256E-s810567033--06e77a204dc7c131d4f860ae546e1e89f94896e0eb0352d3d6a1f47bde7a4e2f.gz";
    }
  ];
in
  bionix.callBionix ./multisample.nix {
    inherit samples;
    name = "SOL2_0099";
    typeHla = true;
    capture = TwistV2HR;
  }
