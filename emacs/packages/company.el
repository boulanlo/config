;; company.el --- company configuration file

(require 'company)
(add-hook 'prog-mode-hook 'company-mode)

(setq company-dabbrev-downcase 0)
(setq company-idle-delay 0)

(set-face-attribute 'company-scrollbar-bg nil
		    :background "#222222")

(set-face-attribute 'company-scrollbar-fg nil
		    :background my/purple)

(set-face-attribute 'company-tooltip nil
		    :background "#222222"
		    :foreground "#ffffff")

(set-face-attribute 'company-tooltip-selection nil
		    :background "#333333"
		    :foreground "#ffffff")

(set-face-attribute 'company-tooltip-common nil
		    :foreground my/purple)

(set-face-attribute 'company-preview nil
		    :background "#000000"
		    :foreground "#ffffff")

(set-face-attribute 'company-preview-common nil
		    :background "#000000"
		    :foreground my/purple)

