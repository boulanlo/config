;; theme.el --- Appearance and look of emacs

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)

(set-face-attribute 'vertical-border nil
		    :foreground "#222222"
		    :background "#000000")

(setq left-margin-width 1 right-margin-width 1)
(set-window-buffer nil (current-buffer))

(defconst my/purple "#9c59d1")

(set-face-attribute 'default nil
		    :foreground "#ffffff"
		    :background "#000000"
		    :family "Iosevka"
		    :height 100
		    :weight 'normal
		    :width 'normal)

(defvar my/modeline-colors
  (pcase-let ((`(,main-color ,main-color-indicator ,light-color ,light-color-indicator)
	       (if (my/is-in-nix-shell)
		   (list "#7134A9" "#9B70C2" "#5A2987" "#B899D4")
		 (list "#222222" "#444444" "#333333" "#555555"))))
    `(:main-color ,main-color
      :main-color-indicator ,main-color-indicator
      :light-color ,light-color
      :light-color-indicator ,light-color-indicator)))

(defface my/face-nix-indicator
  `((t
     :height 100
     :box ,(list :color (plist-get my/modeline-colors :main-color-indicator) :line-width '(0 . 3))
     :foreground "#ffffff"
     :background ,(plist-get my/modeline-colors :main-color-indicator)
     ))
  "Face used to display the nix shell indicator in the modeline"
  :group 'my/faces)

(defface my/face-nix-indicator-inactive
  `((t
     :height 100
     :box ,(list :color (plist-get my/modeline-colors :light-color-indicator) :line-width '(0 . 3))
     :foreground "#ffffff"
     :background ,(plist-get my/modeline-colors :light-color-indicator)
     ))
  "Face used to display the nix shell indicator in the inactive modeline"
  :group 'my/faces)

(set-face-attribute 'mode-line nil
		    :height 100
		    :box `(:color ,(plist-get my/modeline-colors :main-color) :line-width (3 . 3))
		    :foreground "#ffffff"
		    :background (plist-get my/modeline-colors :main-color))

(set-face-attribute 'mode-line-inactive nil
		    :height 100
		    :box `(:color ,(plist-get my/modeline-colors :light-color) :line-width (3 . 3))
		    :foreground "#dddddd"
		    :background (plist-get my/modeline-colors :light-color))

(let ((nix-status (if (my/is-in-nix-shell) " NIX-SHELL " " IMPURE ")))
  (setq-default mode-line-format
	(list
	 `(:eval (propertize ,nix-status 'face 'my/face-nix-indicator))
	 mode-line-front-space
	 mode-line-mule-info
	 mode-line-client
	 mode-line-modified
	 mode-line-remote
	 mode-line-frame-identification
	 mode-line-buffer-identification
	 "   "
	 mode-line-position
	 "   "
	 `(:propertize ("" mode-name))
	 mode-line-end-spaces
	 )))

(set-face-attribute 'fringe nil
		    :background "#000000")

(set-face-attribute 'region nil
		    :background "#333333")

(set-face-attribute 'fixed-pitch nil
		    :family "Iosevka")

(set-face-attribute 'font-lock-comment-face nil
		    :foreground "#aaaaaa")



