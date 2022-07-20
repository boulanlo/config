;; editor.el --- Configuration of the basic editor functions of emacs

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Open windows
(global-set-key (kbd "C-x <down>") 'split-window-below) 
(global-set-key (kbd "C-x <right>") 'split-window-right) 
(global-set-key (kbd "C-x <deletechar>") 'delete-window)
(global-set-key (kbd "C-x <insert>") 'delete-other-windows)

;; Move with arrows
(windmove-default-keybindings 'meta)

;; Allow some variables to be set locally
(setq safe-local-variable-values '((org-tags-column . -120)))
