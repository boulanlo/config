;; rust.el --- Configuration for programming in Rust.

(require 'rust-mode)

(defun my/has-rust ()
  (executable-find "cargo"))
(defun my/has-rust-analyzer ()
  (executable-find "rust-analyzer"))

;; If started from a Nix shell
(when (my/is-in-nix-shell)
  ;; If nix shell has rust
  (when (my/has-rust)
    (setq rust-format-on-save t)
    ;; If nix shell has rust-analyzer
    (when (my/has-rust-analyzer)
      (setq lsp-rust-server 'rust-analyzer)
      (setq lsp-rust-analyzer-server-display-inlay-hints t)
      (add-hook 'rust-mode-hook #'lsp)
      (add-hook 'rust-mode-hook 'lsp-rust-analyzer-inlay-hints-mode))))
