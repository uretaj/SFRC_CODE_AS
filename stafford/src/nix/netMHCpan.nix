{
  stdenv,
  fetchurl,
  patchelf,
  makeWrapper,
}:
assert stdenv.system == "x86_64-linux";
  stdenv.mkDerivation rec {
    name = "netMHCpan-${version}";
    version = "4.1";

    src = fetchurl {
      url = "file:///stornext/Bioinf/data/bioinf-data/Papenfuss_lab/projects/stafford/src/nix/netMHCpan-4.1.Linux.tar.gz";
      sha256 = "1ry9c4mfhyl0n135s6xgvrgcvvymh3i7dkyk0f6irb4b855ryify";
    };

    data = fetchurl {
      url = "https://services.healthtech.dtu.dk/services/NetMHCpan-4.1/data.tar.gz";
      sha256 = "1kjax5vll00qficq1w93hvawjp15shy23r2mxlibj25jjlsslfz4";
    };

    buildInputs = [makeWrapper];

    installPhase = ''
      mkdir -p $out/bin
      mkdir -p $out/lib/netmhc
      tar -zxvf ${data} -C $out/lib/netmhc
      cp Linux_x86_64/bin/* $out/bin
      wrapProgram $out/bin/netMHCpan --set NETMHCpan $out/lib/netmhc
      ln -s $out/bin $out/lib/netmhc/bin
    '';
  }
