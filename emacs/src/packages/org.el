;; org.el --- org-mode configuration file

(require 'org)
(setq org-support-shift-select t)
(define-key org-mode-map (kbd "<M-up>") nil)
(define-key org-mode-map (kbd "<M-down>") nil)
(define-key org-mode-map (kbd "<M-left>") nil)
(define-key org-mode-map (kbd "<M-right>") nil)
(setq org-link-elisp-skip-confirm-regexp "^\(magit-show-commit \\\"[a-f0-9]+\\\")$")
(load-library "oc-basic")
