;; counsel.el --- counsel configuration file

(require 'counsel)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-s") 'swiper)

;; Stop Counsel from opening directories
(let ((done (where-is-internal #'ivy-done ivy-minibuffer-map t))
      (alt (where-is-internal #'ivy-alt-done ivy-minibuffer-map t)))
  (define-key counsel-find-file-map done #'ivy-alt-done)
  (define-key counsel-find-file-map alt #'ivy-done))
