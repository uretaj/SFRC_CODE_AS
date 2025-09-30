_: super:
with super; {
  octopus-caller = octopus-caller.overrideAttrs (
    _: rec {
      version = "git";
      src = fetchFromGitHub {
        owner = "luntergroup";
        repo = "octopus";
        rev = "072a0c807505671ab0532c100c84cf62bfb44230";
        sha256 = "sha256-3PQ+IqWZOZU2lgES2I0q3rIiLzuM6IC+5j+ze8635wA=";
      };

      patches = [./sse.patch];

      MEMORY = "10G";
      PPN = "1";
      WALLTIME = "2:00:00";
    }
  );
}
