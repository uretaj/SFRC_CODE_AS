_: super:
with super; {
  quip.app = quip.app.overrideAttrs (_: {
    patches = [./quip.patch];
  });
}
