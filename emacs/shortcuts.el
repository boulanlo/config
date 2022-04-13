;; shortcuts.el --- Base shortcuts for emacs

(defconst my/config-file-dir "/home/louis/projects/config/emacs/")
(defconst my/config-file (concat my/config-file-dir "main.el"))

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
