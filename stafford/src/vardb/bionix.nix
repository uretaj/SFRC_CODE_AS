{
  bionix,
  id,
}:
with bionix; let
  app = pkgs.callPackage ./. {};
in
  vcf:
    stage {
      name = "vcf2sqlite";
      buildInputs = [app];
      buildCommand = ''
        import ./db ${id} ${vcf}
        cp db $out
      '';
      stripStorePaths = false;
    }
