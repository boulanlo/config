{ pkgs ? import <nixpkgs> {} }: 

let emacs_with_packages =
let
  myEmacs = pkgs.emacs;
  emacsWithPackages = (pkgs.emacsPackagesFor myEmacs).emacsWithPackages; 
in
  emacsWithPackages (epkgs: with epkgs.melpaStablePackages; [
    magit
    ivy
    pkgs.emacs27Packages.undo-tree
    projectile
    flycheck
    company
    counsel
  ]);
  config = import ../emacs/emacs_config.nix { inherit pkgs; };
in
  pkgs.writeShellScriptBin "emacs" ''
    exec ${emacs_with_packages}/bin/emacs -q --load ${config}/main.el
  '' 
