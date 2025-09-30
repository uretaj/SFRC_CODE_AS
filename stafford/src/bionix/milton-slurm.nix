{
  overlays ? [],
  bionix ?
    import ../../src/nix/bionix {
      nixpkgs = import ../../src/nix/nixpkgs {overlays = [(import ../octopus) (import ./strelka.nix)];};
      overlays =
        [
          ./config.nix
          ./milton-slurm-exec.nix
          ./quip.nix
          ./xenomapper.nix
          ./extra-tools.nix
          ../gridss2pl/bionix.nix
          ../virusbreakend/default.nix
          ../msisensor/bionix.nix
          ../aa/bionix.nix
          ../amplicon_classifier/bionix.nix
          ../dedumi/bionix.nix
          ../hr-score
          ../strobealign/bionix.nix
          ../bamfilter
          ./milton-resources.nix
        ]
        ++ overlays;
    },
}: {
  inherit bionix;
  inherit (bionix.fetchers) fetch CCPv2 CREv2 TwistVCGS TWISTv2 fetchSRA sraToFastQ TwistV2HR;
}
