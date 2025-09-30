_: super:
with super; {
  exec = f: x @ {
    ppn ? 24,
    mem ? 15,
    walltime ? "24:00:00",
    ...
  }: y:
    (f (removeAttrs x ["ppn" "mem" "walltime" "partition"]) y).overrideAttrs (attrs:
      {
        PPN =
          if attrs.passthru.multicore or false
          then ppn
          else 1;
        MEMORY = toString mem + "G";
        WALLTIME = walltime;
        JAVA_TOOL_OPTIONS = "-Xmx${toString (builtins.ceil (mem * 0.9))}g";
      }
      // lib.optionalAttrs (x ? partition) {PARTITION = x.partition;});
}
