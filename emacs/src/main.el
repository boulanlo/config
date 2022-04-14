;; main.el --- Main entry point for my emacs configuration

(let ((old-gc-threshold gc-cons-threshold))
  (setq gc-cons-threshold 100000000)

  (defvar my/config-file load-file-name)
  (defvar my/config-file-dir (file-name-directory my/config-file))

  (if (not (string= my/config-file-dir (car load-path)))
      (push my/config-file-dir load-path))

  (package-initialize)

  (load "editor")
  (load "theme")
  (load "shortcuts")
  (load "packages")
  
  (setq gc-cons-threshold old-gc-threshold)
)
