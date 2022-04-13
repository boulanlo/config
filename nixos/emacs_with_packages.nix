{ pkgs ? import <nixpkgs> {} }: 

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
  ])
