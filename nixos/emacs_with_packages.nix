{ pkgs }: 

let emacs_with_packages =
let
  myEmacs = pkgs.emacs;
  emacsWithPackages = (pkgs.emacsPackagesFor myEmacs).emacsWithPackages; 
in
emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
    magit
    ivy
    pkgs.emacs28Packages.undo-tree
    projectile
    company
    counsel
    htmlize
    rust-mode
    lsp-mode
    lsp-ui
    graphviz-dot-mode
    pkgs.emacs28Packages.org-contrib
    citeproc
]) ++ (with epkgs.melpaPackages; [
    nix-mode
    flycheck
]));
  config = import ../emacs/emacs_config.nix { inherit pkgs; };
in
  pkgs.writeShellScriptBin "emacs" ''
    exec ${emacs_with_packages}/bin/emacs -q --load ${config}/main.el $@
  '' 
