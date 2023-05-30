{ pkgs ? import <nixpkgs> {},
}:
with pkgs.pkgsi686Linux;
stdenv.mkDerivation {
  name = "quickjs_multi";
  buildInputs = [ gcc gnumake valgrind ];
}
