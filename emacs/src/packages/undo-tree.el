;; undo-tree.el --- undo-tree configuration file

(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "C-:") 'undo)
(setq undo-tree-auto-save-history nil)
