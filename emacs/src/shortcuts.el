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

;; Box-drawing characters
(global-set-key (kbd "C-c b a") (lambda () (interactive) (insert "┌")))
(global-set-key (kbd "C-c b z") (lambda () (interactive) (insert "┐")))
(global-set-key (kbd "C-c b q") (lambda () (interactive) (insert "└")))
(global-set-key (kbd "C-c b s") (lambda () (interactive) (insert "┘")))
(global-set-key (kbd "C-c b d") (lambda () (interactive) (insert "├")))
(global-set-key (kbd "C-c b f") (lambda () (interactive) (insert "┤")))
(global-set-key (kbd "C-c b e") (lambda () (interactive) (insert "┬")))
(global-set-key (kbd "C-c b r") (lambda () (interactive) (insert "┴")))
(global-set-key (kbd "C-c b c") (lambda () (interactive) (insert "┼")))
(global-set-key (kbd "C-c b x") (lambda () (interactive) (insert "─")))
(global-set-key (kbd "C-c b w") (lambda () (interactive) (insert "│")))
