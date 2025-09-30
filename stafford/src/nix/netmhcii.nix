{
  stdenv,
  fetchurl,
  patchelf,
  makeWrapper,
}:
assert stdenv.system == "x86_64-linux";
  stdenv.mkDerivation rec {
    name = "netMHCII-${version}";
    version = "2.3";

    src = ./netMHCII-2.3.Linux.tar.gz;

    data = fetchurl {
      url = "http://www.cbs.dtu.dk/services/NetMHCII-2.3/data.Linux.tar.gz";
      sha256 = "181hxs6ndxip2vlc5gbj71cc85v4c1j22xd2x67npnc95sgazy3b";
    };

    buildInputs = [makeWrapper];

    installPhase = ''
      mkdir -p $out/bin
      mkdir -p $out/lib/netmhcii
      tar -zxvf ${data} -C $out/lib/netmhcii
      cp Linux_x86_64/bin/* $out/bin
      wrapProgram $out/bin/netMHCII --set NETMHCII $out/lib/netmhcii
      ln -s $out/bin $out/lib/netmhcii/bin
    '';
  }
