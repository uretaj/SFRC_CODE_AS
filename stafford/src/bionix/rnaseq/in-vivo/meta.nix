{nix-adt}: let
  inherit (nix-adt) make-type match any std none;
  inherit (std) option;

  species = make-type "species" {
    human = null;
    mouse = null;
  };
in [
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/10844_HG3VGDMXX_AAGATACT-ACTTACAT_L001_R1.fastq.gz";
        sha512 = "02df8b0e4339626b524041293e9f9b2d10bd130b590eee9751427642b2b7f35b6bc2462adad6f3392a06a43740b23002f92dc108573f528331da4b0ebe019227";
      }
    ];
    sampleid = 10844;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_SARCOMATOUS_11137_H7K7KDRXX_TAATACAG-ATATTCAC_L002_R1.fastq.gz";
        sha512 = "7b695e04403bfbd22d9405164e75a76fda3d96490b844af5316a427eb193581489f275adeee028e9712d625d11cae3fd2ad2be9018641ec55cc8a8735a86670c";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_SARCOMATOUS_11137_H7K7KDRXX_TAATACAG-ATATTCAC_L002_R2.fastq.gz";
        sha512 = "d59a2be21be765e9098851023da9c882c242e3bd8e0cef374ff1ebf45212454721aa3576494f21ffc4a29a0d4e3946a6fbbda5b79a05fdb046572d91e7254dec";
      }
    ];
    sampleid = 11137;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10890_D_H52WJDRXX_CCGCGGTT-AGCGCTAG_L001_R1.fastq.gz";
        sha512 = "202debf87ddf2e0980ec88a988aa4ecbf3a942bbc49b0644c8662e8522caa3554f979dccc1ee23c984e483e7ad568edb49c92b4367df7e9e02ee6b860ee2fd32";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10890_D_H52WJDRXX_CCGCGGTT-AGCGCTAG_L001_R2.fastq.gz";
        sha512 = "a8a5bccc0f0f031409c519a710006a3cb93a2410bbd582fbdeb777d92e74e17a1d476b364636aaea1eaeeb257f4ac334a2042de6c888c2a4f0b1f22bdd4ea44a";
      }
    ];
    sampleid = 10890;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH003_10840_E_HG3VGDMXX_CGTTAGAA-TTCAGGTC_L001_R1.fastq.gz";
        sha512 = "b2eddb8edd043d9fb757428a3361bd3aaa480142380d471310f51e1c81a1cadf411dabafd21db1ac0faf471971a366fdb41e4c4298657d32b8d5ba32dee78090";
      }
    ];
    sampleid = 10840;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10885_E_H52WJDRXX_TTATAACC-GATATCGA_L001_R1.fastq.gz";
        sha512 = "7052ccb0bbef4203faf7ab5026ed20d76afad39f6cdc75fd4fe2e0c280f89615a96d362cb3fd0b0f93dc23f178582b2b80951bf3f6a1933839d1659b966e9273";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10885_E_H52WJDRXX_TTATAACC-GATATCGA_L001_R2.fastq.gz";
        sha512 = "b6c9dc36828c77ca39fbf34c7d5b8b20bfa66537721b034cfe0bd405411bc6c8067ffd3f520b43445407ab0b473f67bbbadde43ddb05d8a8fc9c122ce0a5a8d5";
      }
    ];
    sampleid = 10885;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11145_E_H52WJDRXX_GGACTTGG-CGCAGACG_L001_R1.fastq.gz";
        sha512 = "cf3b2fc3b2f21f4d6760e5cde3a6d6113382b072565627f47379324dab7633f4875e59b5514a1c0c403b58d28737ba659adf7627ec3a0c7c310065db86fe0780";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11145_E_H52WJDRXX_GGACTTGG-CGCAGACG_L001_R2.fastq.gz";
        sha512 = "aee5e67a92b03726047c3bb9066936683d426488a2cbaae09ddca14120f914a6cf74b2f2b0ad223cdd32084b40fa602482dc052c6c96883ad06234870d8aaa2d";
      }
    ];
    sampleid = 11145;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH003_10647_D_HG3VGDMXX_AGCCTCAT-AGTAGAGA_L001_R1.fastq.gz";
        sha512 = "b11d93e7c0d0db0aff85b054f767841691973c230691754cc0a948e141c5659a67638df7ee80894a291647d696c35e53e89cad930944dd1965fb1f21d3f3c20d";
      }
    ];
    sampleid = 10647;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_10038_50_50_10344_H7K7KDRXX_CGGCGTGA-GCGCCTGT_L002_R2.fastq.gz";
        sha512 = "2f9d9b834ff35692d0648f81572ec6e9ef46ccbcd589730f2bf89134e224586c88a76330c559aeb672a8fd8ce1419b9f180ed883d1c17ee48720083a2e4c6406";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_10038_50_50_10344_H7K7KDRXX_CGGCGTGA-GCGCCTGT_L002_R1.fastq.gz";
        sha512 = "adfb649823244d05b34ccfffe37926a0c449fbb533a8cb982862986af42f65b4108246e2d2a62e0bdd01da78b4e6a1b94ba8d71454f629f77c5a6edfdb63aaa3";
      }
    ];
    sampleid = 10344;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_50_50_13492_H7K7KDRXX_ATGTAAGT-ACTCTATG_L002_R1.fastq.gz";
        sha512 = "3039aacc1c5e7b94b02c698aee2fa955fe3b7c78bbf478ed01d3a2f7a4741af6383f8e0236a59e8f7be6b4b1fc50988f169d591297ff9b073c11f7eedb60866b";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_50_50_13492_H7K7KDRXX_ATGTAAGT-ACTCTATG_L002_R2.fastq.gz";
        sha512 = "9c5ab2d763937ad89f4e2321b242ad2317d626e4964f548d91a78804632304b288f6a1f4612b66e33835e27eec19c892a3bfbbbec1e7581e274f879ade32d882";
      }
    ];
    sampleid = 13492;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH003_10649_E_HG3VGDMXX_GATTCTGC-GACGAGAG_L001_R1.fastq.gz";
        sha512 = "aa1a704fcce329e30f7cea286d10a7959081a219966e7ba6f2f140bc4760834eb5d4d77c71eeba01d7730ceaae5578ed5fe1dce627ef3c272c0d9aa323e9f1cb";
      }
    ];
    sampleid = 10649;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_50_50_13221_H7K7KDRXX_GGTACCTT-AAGACGTC_L002_R1.fastq.gz";
        sha512 = "4271048317906cdd2ba08e6b48f1aebf5dcbbcd2f089db917029a5f0b583b63a5e1c0006ea86b253c3830ebfcec624ea44df74111bdd0017c70ed88eb2faf7ce";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH003_50_50_13221_H7K7KDRXX_GGTACCTT-AAGACGTC_L002_R2.fastq.gz";
        sha512 = "22013b9e004b1017c83d23e4e4cf7a6d3aa3259b594ecd972114cfbcd7a48c1500e61ac469afbcacf42905a3eb5bf69f61c694a7569274377e66be569c158eef";
      }
    ];
    sampleid = 13221;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10650_E_H52WJDRXX_AAGTCCAA-TATGAGTA_L001_R1.fastq.gz";
        sha512 = "0637fd91ef3be76a73b1a3872b296147a9e2a8e16155b165786c615c66d2d870d9ac284bc75561e31fc7a10fb364fc9a33956cab810c51113b4061d7f03bde4b";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10650_E_H52WJDRXX_AAGTCCAA-TATGAGTA_L001_R2.fastq.gz";
        sha512 = "031eae4df05a97cffcc87a94c8c32a1fcce8ce1af4e85ca255b9e79795777375e7c96abec061ded85200f2c5fdd1bfc9ca2ed2106bfde6fd58ee0965d5cea47b";
      }
    ];
    sampleid = 10650;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH006_10353_D_HG3VGDMXX_TCGTAGTG-AGACTTGG_L001_R1.fastq.gz";
        sha512 = "6591a7bfc63aabe3dfdff41b68d7e58cd4fcfb26231b039482e99abe830c19a5f27f519b700aaf96e771d9050d6c9ce605e3e4a73d98ab2471d360fc1d6602ce";
      }
    ];
    sampleid = 10353;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH006_10351_E_HG3VGDMXX_TCGATATC-ACACGAGT_L001_R1.fastq.gz";
        sha512 = "deeef8bed0f10e82600a32431c2b7ff7654573fafbe267d943d04ae9b6eab51d98d118dbf7819e1ab2c23abab1a4394ab33e9d4254c707ec468579f6625e350e";
      }
    ];
    sampleid = 10351;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11151_D_H52WJDRXX_ATCCACTG-AGGTGCGT_L001_R2.fastq.gz";
        sha512 = "abecb088598c3bab76e9c5bb1348af4d12627d9e7a76d6b6dadaf02439cf3bb325ca8997c926c354640a390c5be3ef23aaf1bd07338a052542dfa70b0ffb7da9";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11151_D_H52WJDRXX_ATCCACTG-AGGTGCGT_L001_R1.fastq.gz";
        sha512 = "45ae25e28d74249bad49679b33f651c249788182390f67d817b77680fc6d27b12b07130f7942db9ad625a151d4bc48df4861e4c553a3fe5b291c11a43afb0251";
      }
    ];
    sampleid = 11151;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11154_E_H52WJDRXX_GCTTGTCA-GAACATAC_L001_R2.fastq.gz";
        sha512 = "815c11513778aaea82f908469daaa429b150a272b399c2cee31be831e4081aeffa4f798ec48945ae59908ebf7aa73f59e6eb060ea2967a2a4e1d5bc38e30ae1b";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11154_E_H52WJDRXX_GCTTGTCA-GAACATAC_L001_R1.fastq.gz";
        sha512 = "72e1c57bc40ae84fb450348cfef9859117e307cee046d8f3419f1519621a262df9cfd95928778fefcd58c0c96ba60a4040c212d8c5941683f351cd9cdff6a2c8";
      }
    ];
    sampleid = 11154;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH006_11934_H7K7KDRXX_AACGTTCC-GGAGTACT_L002_R1.fastq.gz";
        sha512 = "618f6556b09534d103bdefa6ca44e10af0693d53d44c825d6df041d8d8cf628c79987b76426235ffa25ab3ffdc535781ddd39c83029d3f0ac9ecbf317711f688";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH006_11934_H7K7KDRXX_AACGTTCC-GGAGTACT_L002_R2.fastq.gz";
        sha512 = "3c24059a6e8fcdcdb437a251a8b1bdd50b6ad6dc0299f6beb39fa68c69c289359b495b0b2a267ecb7e60f35f90d1fb179a0ed7a18d7e26ae91fd43ef5825b807";
      }
    ];
    sampleid = 11934;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11651_E_H52WJDRXX_CAAGCTAG-ACATAGCG_L001_R1.fastq.gz";
        sha512 = "6210d5c8c519001a6f1f953edcf58d0b466f2a1f1f1ea7d21ea8ca483654295b976a2649e89c678bb970271a0dfe5facd2c2f4c30b0d0e97bde61f2a4492d38d";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11651_E_H52WJDRXX_CAAGCTAG-ACATAGCG_L001_R2.fastq.gz";
        sha512 = "7bdc52793bf14ef2a1f90ca35c215bd555ed9b7826d6e16ba2485a1895429e18480013de729a0b0d740d312f2692ddb1705b98be781f429aa439ba9320831696";
      }
    ];
    sampleid = 11651;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/11233_HG3VGDMXX_GCGCAAGC-TCACGCCG_L001_R1.fastq.gz";
        sha512 = "6b19a3d518dadf0571085d1632cb7c9a4dbee6fd834cce88f206d44b81a03ac451d001f942c127a1dc0d2f146b8780e602aea5675f0223d3d5af807e3a22e1d6";
      }
    ];
    sampleid = 11233;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11234_D_H52WJDRXX_TGGATCGA-GTGCGATA_L001_R2.fastq.gz";
        sha512 = "c8172baf8b6945ec37e6ec8fed2f47e165312241177fd1b192054f58de18a95dc605d5377cf35daf5caa335f11b5cebe1fe932fcb90c7b1c0970115306784822";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11234_D_H52WJDRXX_TGGATCGA-GTGCGATA_L001_R1.fastq.gz";
        sha512 = "0e04864f837f8bd389ecbd3716e96704eb82a0de1f6c43228aa7bb46adb5b698a361005789c5c420f7d0e28b294cf26c2bd1be8dc3e279491609d63b4388a9e6";
      }
    ];
    sampleid = 11234;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11836_D_H52WJDRXX_AGTTCAGG-CCAACAGA_L001_R1.fastq.gz";
        sha512 = "99345f949b3eaf258b8a9e52755a09ae9a5944ec36f6c6904e6bcb6218b6e5a6e22eec5ef7af8c52c1cd235f81c5e9ff3180b5f5e073684eb36d866af24b745a";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11836_D_H52WJDRXX_AGTTCAGG-CCAACAGA_L001_R2.fastq.gz";
        sha512 = "9325c8244b55932bf8312a0b1a44a762666ea7438956676f0998abf51f745b1941966050a2db2377c623ae14470ab16e164391371d36618311084a865246c44a";
      }
    ];
    sampleid = 11836;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH142_11235_E_HG3VGDMXX_TAAGTGGT-CTTAAGCC_L001_R1.fastq.gz";
        sha512 = "458a8c60941eeded0dc556bb8ccc521a8e43d4c1f7df7c0399f4d4b3f66b71dbacbe6a95d946c5319cad823f3d01e383b07e9ec5cfa9e6dd4b41d65ba8c6be52";
      }
    ];
    sampleid = 11235;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10955_E_H52WJDRXX_GACCTGAA-TTGGTGAG_L001_R2.fastq.gz";
        sha512 = "109f0f516ab9d44ceab613d64cc5190eb6e06acec62775e0b756a72c2df761b66eed253cd1381478d0b1c55b077812c2fba93f0f1dfeffbb2f5ed284bd5d9eb9";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10955_E_H52WJDRXX_GACCTGAA-TTGGTGAG_L001_R1.fastq.gz";
        sha512 = "15996a33ab05b5bb1a53adf7e4a117983d749affaa72396974d651bd6c7bc09bbbc9e3ee6a97a9a6aa578f56577a40d79297cff4d55972f5de291ee018114155";
      }
    ];
    sampleid = 10955;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10956_E_H52WJDRXX_TCTCTACT-CGCGGTTC_L001_R1.fastq.gz";
        sha512 = "e710afe7550e7559dfbc113a78d66bd2a647b2ca90beb504bb77b4abaa9ea1d8fe351073a253e440717829fc0f0fa986bdf2b9c5fe8708c5691ddfdd850f062e";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10956_E_H52WJDRXX_TCTCTACT-CGCGGTTC_L001_R2.fastq.gz";
        sha512 = "8024832964d3d6db49f9c0e4369ad1eaf02f9b1f9631c03854f22a3e4749a6dbbd0451765b463eeee28c4615f60c99b2db013a4b5334a64bdf3aaa5e8cf9c6f1";
      }
    ];
    sampleid = 10956;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH419_10627_D_HG3VGDMXX_CGGACAAC-TCCGGATT_L001_R1.fastq.gz";
        sha512 = "52e079382917ddb748126a901f3f9c8200771ca4487e206438f691b17042fa11916837e12521d4a3ffb670d81e78bf7394e947906983882552915a6722d83f95";
      }
    ];
    sampleid = 10627;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10620_D_H52WJDRXX_CTCTCGTC-TATAACCT_L001_R1.fastq.gz";
        sha512 = "31414e1f09b95e46df88f76767190e77e2ce47c289e306574eb81f0ebc8c7112d1ccc5da5505a1181d3b39c809a2c1c6afd6a9e993bb42a5f7016a6101ae9c2c";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10620_D_H52WJDRXX_CTCTCGTC-TATAACCT_L001_R2.fastq.gz";
        sha512 = "ac7b3e07bc4106211701ce5d40f44e9871c6c8d77673b9d6b14aeda6d55de722a2de4cda3059ecb67dfc879f5e7d33b98987e535f6503e1b67869e32655e989e";
      }
    ];
    sampleid = 10620;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/12611_D_H52WJDRXX_CCAAGTCT-AAGGATGA_L001_R2.fastq.gz";
        sha512 = "07ed375dca42a73b3a51fc066b14da0dbda9bb6cc7afa5dce40ec5f235aaf5e25bafc3285bf3c8bd22b3d60bef88915c5b08128929cb4b9b61f89b2fb98d3140";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/12611_D_H52WJDRXX_CCAAGTCT-AAGGATGA_L001_R1.fastq.gz";
        sha512 = "dc25bedf6a4b3d703f983456820e3c867646b023070104f1e99cc0340ce471429def5a8d28b5a25810836be584527252e46de0db6f8c3049072f68c9585700a3";
      }
    ];
    sampleid = 12611;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/PH419_10623_E_HG3VGDMXX_ATATGGAT-CTGTATTA_L001_R1.fastq.gz";
        sha512 = "39c2ad2c4ac876e16023f73b0d7fd6b769e01f1d51c807e1391eaabc3dd697422d2f0c227d7ace0a4b0a6369d6d91d94ecd34360e6ba1973432b899497f1652e";
      }
    ];
    sampleid = 10623;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH419_10619_H7K7KDRXX_GCACGGAC-GTCTCGCA_L002_R1.fastq.gz";
        sha512 = "8c3e9355e960323dbfe7349d9ebf9fc1e200b0d1dc6f0ead40e505429dea100e22550413664ed8022f40e972e1e9a91be962af1d4cb280a9a478ebc37c4868c7";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH419_10619_H7K7KDRXX_GCACGGAC-GTCTCGCA_L002_R2.fastq.gz";
        sha512 = "9408a5381a22eb205e44550751b312ed5af4c5d662c66fe7f33369ef16c1787ec087c10b72c6e903fc7a5d3b86da044611409bad087698eb4c82b8906d969f80";
      }
    ];
    sampleid = 10619;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH419_13194_H7K7KDRXX_GCAGAATT-ACCGGCCA_L002_R1.fastq.gz";
        sha512 = "232a2839505ddf57bf31b7e39c2f3bb4ce88cebae95638464d20a01d9df1c89a4c1ec678c463a9ca7400122769a47e6d452e6ce9bd77185a0653f4164283caf5";
      }
      {
        path = "./AGRF_CAGRF20024_H7K7KDRXX/PH419_13194_H7K7KDRXX_GCAGAATT-ACCGGCCA_L002_R2.fastq.gz";
        sha512 = "d41db066efc9a490b1708568b7033c5fc142e66c1b9c1d007e71ccbf9d75721ffda16649963564d66a3aeccd61cca08e2bbb5b6683c5856b4893dd78ee6c16f3";
      }
    ];
    sampleid = 13194;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/11466_HG3VGDMXX_ATGGCATG-AAGGTACC_L001_R1.fastq.gz";
        sha512 = "5574e9a17bf454791759ac6b5adb6605a6db0120ead2cf765564c62263ffdac65241266b6a9e79254f68251d24a706daa114d4fd5cb6f694cd2731e302ffd5ef";
      }
    ];
    sampleid = 11466;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11881_D_H52WJDRXX_TTGGACTC-GGAAGCAG_L001_R2.fastq.gz";
        sha512 = "ee94b6cc5ae798166fd7f5677824b9c1c92e669ea33c9fc223385896f137e545397f5359130d45232c84efaf21f2b6452e77c9901c504d9def4d1c587e67de1c";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11881_D_H52WJDRXX_TTGGACTC-GGAAGCAG_L001_R1.fastq.gz";
        sha512 = "476ec3eaa74359abd4e14cb585bc30a3bc1cbe4bc5d2afcab494ddcf849a2e91a73d2d731cbaa676faffc1930052c5d6936fd3a9eaf6034a62ab29e2369f9cf7";
      }
    ];
    sampleid = 11881;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10522_D_H52WJDRXX_GGCTTAAG-TCGTGACC_L001_R2.fastq.gz";
        sha512 = "1636a97b66df4d191d7befff63cb929454796c544fe748940f20939e9e26450f617957626e45d5051bd47827753d5f80f0a4cfb7f2d45e6fccefc492cf172f6c";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10522_D_H52WJDRXX_GGCTTAAG-TCGTGACC_L001_R1.fastq.gz";
        sha512 = "f13851b75444f33cada674fd38c9c1fa29060759ef54d0c99e235d1694554bf8c34773740fdf90304c2dae14973cd08719d2fab684c9319e4ef83c409ef506b2";
      }
    ];
    sampleid = 10522;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18568_HG3VGDMXX/11462_HG3VGDMXX_GGAGCGTC-GTCCGTGC_L001_R1.fastq.gz";
        sha512 = "67e15b7522ff2414e398770acb68f520c20907428d7aa905dee3b3e8c59545c87b8f4ad850be4186382c1e99c2e77df0e2144d862850f035d3531f3af1190b8c";
      }
    ];
    sampleid = 11462;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11469_E_H52WJDRXX_AATCCGGA-CTACAGTT_L001_R1.fastq.gz";
        sha512 = "2b394847bf843855a6a24551e1489178d3e8186b6dd72c495ef930d678b06b58ba4e1165e6c59880687351eb192f834e7575598118cbc87e1dabcf9f768c1d6c";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11469_E_H52WJDRXX_AATCCGGA-CTACAGTT_L001_R2.fastq.gz";
        sha512 = "878d9df44d1ed081d7784b90a7e9a69d5dcec7363d07efee201a28c313859cc3f26316367e48ea6be2a90ac51872b5c134d445265fb84f7411133ec2bf71c65e";
      }
    ];
    sampleid = 11469;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11447_D_H52WJDRXX_TAATACAG-ATATTCAC_L001_R2.fastq.gz";
        sha512 = "3e7192984bd689a0ebf813b4420e6643a96b5e7b5be4f9ed55f72f9892155799f366014b2c84b64bd610a2c71d117a1aa33e0709d5cd29055615cc714af25be4";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11447_D_H52WJDRXX_TAATACAG-ATATTCAC_L001_R1.fastq.gz";
        sha512 = "3a976ad0dc8f23d825f13545a1b263576ae31facd2d3feecfe9441c3d3c96585649903068248cb52a68b9eaf575d8e714884570892223787014353e9210d77eb";
      }
    ];
    sampleid = 11447;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11444_D_H52WJDRXX_CGGCGTGA-GCGCCTGT_L001_R2.fastq.gz";
        sha512 = "0f88f05b36cc65825dd56d74b92f4c1055de0a462cc79d5a3140d8c80367dac4e9a02b1af73859d0b7f6d4df6d315c6a9f6c199c285463cd83f56820723476c0";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11444_D_H52WJDRXX_CGGCGTGA-GCGCCTGT_L001_R1.fastq.gz";
        sha512 = "72162c0f5e3b9bd8c19d6ab0a5885f3d36da303b03b14572649c7980d70b6a50575b1141b0a37cbae9777cd58e162e82dcffe0d735102f6d65a7bd17bdf13e85";
      }
    ];
    sampleid = 11444;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/12054_D_H52WJDRXX_ATGTAAGT-ACTCTATG_L001_R2.fastq.gz";
        sha512 = "467aebe7d049a5d43f4d34f57068323560a5feddbd8f531804696961dffb80c0c05106277184dd910fb686a1f804f1dd21c2938942b5e66675108f15e00e14d4";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/12054_D_H52WJDRXX_ATGTAAGT-ACTCTATG_L001_R1.fastq.gz";
        sha512 = "eb764cce02167ec2d1c8ad1b0d37cdb3379dfc2a73e1695e75c846f1c7779cd42dc7a1027216cba9d2f462bde6740be291b71e85a81189f646ebc585d800cf74";
      }
    ];
    sampleid = 12054;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11445_E_H52WJDRXX_GCACGGAC-GTCTCGCA_L001_R2.fastq.gz";
        sha512 = "8f7d9ba3d4e1b3ce4a3f602bf5a607bc02b0e74760802b429e9c1b993bbb2e7e29c529e2d37013ba57a36cd29e8541981b2f27a033916b74d9206a3bfcd3084e";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11445_E_H52WJDRXX_GCACGGAC-GTCTCGCA_L001_R1.fastq.gz";
        sha512 = "7ab6e1406cd91c4b13ec788b047c2694b2c76ba6213cdafbc449b3c53bb3f4aa02900f5aa6df51c8d7e8f1561715578cb16cbfbefbd2e05217c9120fe0e60aba";
      }
    ];
    sampleid = 11445;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11443_E_H52WJDRXX_GGTACCTT-AAGACGTC_L001_R1.fastq.gz";
        sha512 = "4837df745fb1c968bfdddab7b89bea2e9183ab0a94198b02a03b24e0818dae52ba39a2c53b87ff247beb237e66addbb828148fd71daeebe6dddc085c496693f0";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/11443_E_H52WJDRXX_GGTACCTT-AAGACGTC_L001_R2.fastq.gz";
        sha512 = "debaae4d1b49952cdcdf5410ed03b3bc7fa16608aea03c54f8a0829fdbadf1ce9c4562b66b2270be7e98a552267e2a4c6b54b5f49ddb546db006023e42c7a874";
      }
    ];
    sampleid = 11443;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10322_E_H52WJDRXX_AACGTTCC-GGAGTACT_L001_R2.fastq.gz";
        sha512 = "3cf0eaa1c58bf1947e88860c4311219f6e87981b9dd5a1fedfd45ee2376fbe875d70e78b38005b2a19b6da46a22b43a751dcf767d004989e7d499c108e19e184";
      }
      {
        path = "./AGRF_CAGRF19394_H52WJDRXX/10322_E_H52WJDRXX_AACGTTCC-GGAGTACT_L001_R1.fastq.gz";
        sha512 = "7f16cf654517cfc927bc182ce46dd7e5a21ff0685b0856a0bd105e9199b2f11b282d1411d4d96ab02a52d6e9f4d717719fd37bf4f5eadd82e8ed0a1f9a155d43";
      }
    ];
    sampleid = 10322;
    species = species.human;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18569_HG3VGDMXX/84_BL_11552_D_HG3VGDMXX_GCAATGCA-GGAACGTT_L001_R1.fastq.gz";
        sha512 = "d7d31c26e150e15c0e55b3bc5a0cec78d00799f84c49f885b46530e912d8397ac233263dd8519ec741544ef1ba813a51888b25998fb3f24a50f8dccfacc77763";
      }
    ];
    sampleid = 11552;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_11022_H7K7KDRXX_AGTTCAGG-CCAACAGA_L001_R1.fastq.gz";
        sha512 = "cc39f4ffd6a1d3cff9bb5dacd00773bbad217fef68d8215f4e4e54de969bb7fc1c61452ef7c57dc38511f247649c082b0784b67a07132ae399126d995d2021d5";
      }
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_11022_H7K7KDRXX_AGTTCAGG-CCAACAGA_L001_R2.fastq.gz";
        sha512 = "d7efd33feb025a53024c5038876b2313c8a1ebda57bfb039bafa74d8c4acfe14a7ab2a03f8f22df83305c75412791d9937d09c98b26e88b3907a7d16ecced0de";
      }
    ];
    sampleid = 11022;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_11555_H7K7KDRXX_GACCTGAA-TTGGTGAG_L001_R2.fastq.gz";
        sha512 = "f9a9aafa4b7ed1862cacbd12d8042f1b7fdcb398bd3b5a97460f66e99c29fc204ae2d8dd6abbcf46b2e841e538ba0bda33d83ff28311858dea072a04e7eb7921";
      }
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_11555_H7K7KDRXX_GACCTGAA-TTGGTGAG_L001_R1.fastq.gz";
        sha512 = "9b88d4a7dc7231f279269182139ce75cdc324fbef27bb8246b7dbfc5653a09491004b2340c8ba5ee654c7f3f45bfbe39f52ed50d9ac51b36bdab6c39143401b9";
      }
    ];
    sampleid = 11555;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18569_HG3VGDMXX/84_BL_11554_E_HG3VGDMXX_GTTCCAAT-AATTCTGC_L001_R1.fastq.gz";
        sha512 = "8cb34e12431e82091616405f6332f658b073c4311d155a6d75449057ba1ea1c8616ee389d5cb126ad3d5c6a5e155f8f378b8ea5aec4fe9b7da6a1f2c6d9c4d3c";
      }
    ];
    sampleid = 11554;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_11599_H7K7KDRXX_TCTCTACT-CGCGGTTC_L001_R2.fastq.gz";
        sha512 = "654be4311be4faeda31ba0dbbd15dc582304815d32fc8a5991c077973bff73fb3ee58b68441a40814c6dc977522f07e3ef0df8666e474ff882a150b7114697f9";
      }
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_11599_H7K7KDRXX_TCTCTACT-CGCGGTTC_L001_R1.fastq.gz";
        sha512 = "0fb948f7696da6dba289e86b7d4c192366030d84a01575c2026b7c1660de050431af52b9640ecb20551f4926ae0d65e176ed4a7a8a8460b2a9672f8d09962aca";
      }
    ];
    sampleid = 11599;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_10600_H7K7KDRXX_CTCTCGTC-TATAACCT_L001_R2.fastq.gz";
        sha512 = "33d1b06704bded6a0e94fa5a7a9ba8366cf294a7aa2057ab1f948eaf25a75bcc409385c44cbfb4097fe637a7dc616b76b573c704e5c419b46903907a1d189a8d";
      }
      {
        path = "./AGRF_CAGRF20023_H7K7KDRXX/GEMM84_BL_10600_H7K7KDRXX_CTCTCGTC-TATAACCT_L001_R1.fastq.gz";
        sha512 = "1089c103f1f91bd85afc0c504837897edd93205c2766d1389a56000d39e733d80531273e393eb8591f5693ffc153898af828c544191756eb45f39ffc05cb887d";
      }
    ];
    sampleid = 10600;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18569_HG3VGDMXX/95_10830_D_HG3VGDMXX_ACCTTGGC-GGCCTCAT_L001_R1.fastq.gz";
        sha512 = "16973ca15cb291ef96daa6a8afcbcb7b49072988844a1c768a3024d3c502a4bceece1a023d945c5ea1447ef9e74de44d7217fb4d860f0fa9988d78522f79c3db";
      }
    ];
    sampleid = 10830;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./AGRF_CAGRF19393_H52WJDRXX/10822_E_H52WJDRXX_TTACAGGA-TGACAAGC_L002_R1.fastq.gz";
        sha512 = "81d925584ee5c65ad4c6af60ffd47eae53049b50c45c6dbab8d532cac04c75a999c9464086f4a336d1aad1a063431212e431dec8eac06167a9a11ff8832e7441";
      }
      {
        path = "./AGRF_CAGRF19393_H52WJDRXX/10822_E_H52WJDRXX_TTACAGGA-TGACAAGC_L002_R2.fastq.gz";
        sha512 = "3936c057584124755ee8546684eec731579391a67020609b6f3390ec4f06b8eb74ce8994571b326524f7f70d881df2f70d4bf8205cce8af1cdffab21a01b197b";
      }
    ];
    sampleid = 10822;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18569_HG3VGDMXX/95_10831_E_HG3VGDMXX_ATATCTCG-ATCTTAGT_L001_R1.fastq.gz";
        sha512 = "0494b757a28f366072af2b7a45d2926a720ac8242429eb31f1b1748a890963a4d178f1647f8d16c3256594a417b5825e6598cf45e5ec343079d71aeb1f0891c8";
      }
    ];
    sampleid = 10831;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18569_HG3VGDMXX/84_10554_E_HG3VGDMXX_AACAGGTT-ATACCAAG_L001_R1.fastq.gz";
        sha512 = "1789c7ead3202cbcfbc4f80a88ec35bff4eded26675bfa45419583972999c217b27afe0f19ecda5dc23c06818fc6efcd88943b50b095be3ddb80eeebd3f4e121";
      }
    ];
    sampleid = 10554;
    species = species.mouse;
  }
  {
    fastqs = [
      {
        path = "./rnaseq/AGRF_CAGRF18569_HG3VGDMXX/84_10552_E_HG3VGDMXX_GCGCTCTA-GCTCCGAC_L001_R1.fastq.gz";
        sha512 = "ad33a1092b0bc38f73c6d7e3c7d4e8ea40ad099e1ffd14323028ae550e4d4c768c47141c42b7553efe23fa96ec2f45151bc210a8c65b6439acb333d29b5e3278";
      }
    ];
    sampleid = 10552;
    species = species.mouse;
  }
]
