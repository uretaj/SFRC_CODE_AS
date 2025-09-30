self: super: with super; {
  bamfilter.filter = exec (_: input: stage {
    name = "bamfilter";
    buildInputs = [(pkgs.callPackage ./Cargo.nix {}).rootCrate.build];
    buildCommand = ''
      bamfilter < ${input} > $out
    '';
    stripStorePaths = false;
    passthru.multicore = true;
    passthru.filetype = input.filetype;
  });
}
