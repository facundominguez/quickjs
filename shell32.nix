{ pkgs ? import <nixpkgs> {},
}:
with pkgs.pkgsi686Linux;
stdenv.mkDerivation {
  name = "quickjs_multi";
  builtInputs = [ gcc gnumake valgrind ];
  # valgrind is missing from the path for some reason
  shellHook = ''
    export PATH="${valgrind}/bin:$PATH"
    '';
}
