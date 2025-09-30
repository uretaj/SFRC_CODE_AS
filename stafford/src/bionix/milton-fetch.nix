{bionix ? import ../../src/nix/bionix {nixpkgs = import ../../src/nix/nixpkgs {};}}:
with bionix;
with lib;
with types; let
  mirrors = [
    "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/"
    "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford_penington.j/"
  ];

  fetchurl = (exec (_: attrs: pkgs.fetchurl (attrs // {passthru.multicore = false;}))) {
    mem = 1;
    walltime = "5:00:00";
  };

  sra-tools = pkgs.callPackage ./sra-tools.nix {};
  uuid = "1a2a624f-02fb-4c64-879e-be22d59c2c5f";
  sra-config = pkgs.writeText "sra-config" ''
    /LIBS/GUID = "${uuid}"
  '';
in rec {
  sraToFastQ = exec (_: sra:
    stage {
      name = "sra-fastq-dump";
      buildInputs = [sra-tools];
      outputs = ["out" "pair"];
      buildCommand = ''
        export HOME=$TMPDIR
        install -Dm 644 ${sra-config} $HOME/.ncbi/user-settings.mkfg
        ln -s ${sra} input.sra
        fasterq-dump -e $NIX_BUILD_CORES input.sra
        cp input_1.fastq $out
        cp input_2.fastq $pair
      '';
      passthru.filetype = with types; filetype.fq {};
      passthru.multicore = true;
      passthru.id = sra.id;
    });

  fetchSRA = exec (_: {
    id,
    sha256,
  }:
    stage {
      name = "${id}.sra";
      nativeBuildInputs = [sra-tools];
      buildCommand = ''
        export HOME=$TMPDIR
        export SSL_CERT_FILE=${pkgs.cacert}/etc/ssl/certs/ca-bundle.crt
        install -Dm 644 ${sra-config} $HOME/.ncbi/user-settings.mkfg
        prefetch --max-size 109951162777 ${id}
        cp ${id}/${id}.sra $out
      '';
      outputHash = sha256;
      outputHashType = "flat";
      outputHashAlgo = "sha256";
      stripStorePaths = false;
      passthru.id = id;
    });

  fetchAnnexFile = p:
    fetchurl {
      urls = map (url: url + ".git/annex/objects/" + p) mirrors;
      sha256 = pipe p [(splitString "--") last (splitString ".") head];
      passthru.multicore = false;
    };
  fetchAnnex = {
    r1,
    r2,
    ...
  }: let
    f = p: tagFiletype (filetype.gz (filetype.fq {})) (fetchAnnexFile p);
  in {
    input1 = f r1;
    input2 = f r2;
  };
  fetch = attrs:
    if attrs ? r1 && attrs ? r2
    then fetchAnnex attrs
    else fetchOld attrs;
  fetchOld = {
    prefix,
    hash1 ? null,
    hash2 ? null,
    sha256-1 ? null,
    sha256-2 ? null,
    suffix,
    ...
  }: let
    f = {
      prefix,
      suffix,
      hash ? null,
      sha256 ? null,
    }:
      tagFiletype (filetype.gz (filetype.fq {})) (
        fetchurl (
          {
            urls =
              map (url: url + "lib/" + prefix + "_" + suffix + ".fastq.gz")
              mirrors;
          }
          // (
            if hash != null
            then {
              sha512 = hash;
            }
            else {
              inherit sha256;
            }
          )
        )
      );
  in {
    input1 = f {
      inherit prefix;
      suffix = "R1${suffix}";
      hash = hash1;
      sha256 = sha256-1;
    };
    input2 = f {
      inherit prefix;
      suffix = "R2${suffix}";
      hash = hash2;
      sha256 = sha256-2;
    };
  };

  CREv2 = hg19tohg38 (
    fetchurl {
      urls =
        map (url: url + "lib/pmcc/S30409818_Covered_MERGED_crev2.bed") mirrors;
      sha256 = "fe7523a916316f2cb7bf4fcc76f00ff6d893f856d61eb64063030d42fa6090c6";
    }
  );

  CCPv2 = hg19tohg38 (
    fetchurl {
      urls = map (url: url + "lib/pmcc/3016871_Covered_ccpv2.bed") mirrors;
      sha256 = "11f00f5bb117ed4600eeacbe12cf158339be56c59d2352bcf63056a59d1f25e5";
    }
  );

  TwistVCGS =
    (
      fetchurl {
        url = "https://www.twistbioscience.com/sites/default/files/resources/2021-10/VCGS_Exome_Covered_Targets_hg38%2040.1MB%20.bed";
        sha256 = "sha256-WSsitCutRdpoYyycgobBeKnt+7GlrtdH/NHwBt7wI8U=";
      }
    )
    .overrideAttrs (_: {name = "twist.bed";});

  TWISTv2 =
    (
      fetchurl {
        url = "https://www.twistbioscience.com/sites/default/files/resources/2022-12/hg38_exome_v2.0.2_targets_sorted_validated.re_annotated.bed";
        sha256 = "sha256-j6jxqf1dLcvvorSHE+iyQgZetgvvD5uEgjIiRu1NWnc=";
      }
    )
    .overrideAttrs (_: {name = "twist-v2.bed";});

  HR =
    fetchAnnexFile "9X/3V/SHA256E-s74032--38900c6343ec7111ebe52a28dcd0b7782b52f16c1ee342432a0ef6b7fee0cf2a.bed/SHA256E-s74032--38900c6343ec7111ebe52a28dcd0b7782b52f16c1ee342432a0ef6b7fee0cf2a.bed";

  TwistV2HR = bionix.pkgs.runCommand "TwistV2-HR-combined.bed" {nativeBuildInputs = [bionix.pkgs.bedtools];} ''
    cat ${TWISTv2} ${HR} | \
      tr -d '\r' | \
      cut -f1-3 | \
      sort -k1,1 -k2,2n > sorted.bed
    bedtools merge -i sorted.bed > $out
  '';

  hg19tohg38 = callBionixE ./hg19tohg38.nix {};
}
