;; shortcuts.el --- Base shortcuts for emacs

;; Edit config file
(defun my/open-config ()
  (interactive)
  (find-file my/config-file))

(global-set-key (kbd "C-c c") 'my/open-config)

;; Reload config file on the fly
(defun my/reload-config ()
  (interactive)
  (load my/config-file))

(global-set-key (kbd "C-c r") 'my/reload-config)
