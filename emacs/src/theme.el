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

(set-face-attribute 'mode-line nil
		    :height 100
		    :box '(:color "#222222" :line-width 3)
		    :foreground "#ffffff"
		    :background "#222222")

(set-face-attribute 'mode-line-inactive nil
		    :height 100
		    :box '(:color "#333333" :line-width 3)
		    :foreground "#dddddd"
		    :background "#333333")

(set-face-attribute 'fringe nil
		    :background "#000000")

(set-face-attribute 'region nil
		    :background "#333333")

(set-face-attribute 'fixed-pitch nil
		    :family "Iosevka")

(set-face-attribute 'font-lock-comment-face nil
		    :foreground "#aaaaaa")



