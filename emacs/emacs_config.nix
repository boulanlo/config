{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenvNoCC.mkDerivation {
  pname = "emacs_config";
  version = "0.1.0";
  src = ./src;
  phases = ["unpackPhase" "installPhase"];

  installPhase = ''
    mkdir -p $out/
    cp ./*.el $out/
    mkdir -p $out/packages
    cp ./packages/*.el $out/packages
  '';
}