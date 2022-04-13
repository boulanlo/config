;; main.el --- Main entry point for my emacs configuration

(let ((old-gc-threshold gc-cons-threshold))
  (setq gc-cons-threshold 100000000)

  (if (not (string= "/home/louis/projects/config/emacs/" (car (last load-path))))
    (push "/home/louis/projects/config/emacs/" load-path))

  (defvar my/config-file load-file-name)
  (defvar my/config-file-dir (file-name-directory my/config-file))
  
  (load "editor")
  (load "theme")
  (load "shortcuts")
  (load "packages")
  
  (setq gc-cons-threshold old-gc-threshold)
)
