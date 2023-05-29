{ pkgs ? import <nixpkgs> {},
}:
with pkgs;
multiStdenv.mkDerivation {
  name = "quickjs_multi";
  builtInputs = [ gcc gnumake pkgsi686Linux.valgrind ];
  # valgrind is missing from the path for some reason
  shellHook = ''
    export PATH="${pkgsi686Linux.valgrind}/bin:$PATH"
    '';
}
