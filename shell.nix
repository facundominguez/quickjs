{ pkgs ? import <nixpkgs> {},
}:
with pkgs;
multiStdenv.mkDerivation {
  name = "quickjs_multi";
  buildInputs = [ gcc gnumake pkgsi686Linux.valgrind ];
}
