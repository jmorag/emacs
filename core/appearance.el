
;; Customize aesthetics of emacs


(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-dark t))

;; eliminate scroll bars and do other things
(use-package better-defaults
  :ensure t
  )

;; get rid of startup message
(setq inhibit-startup-message t)

;; get rid of stupid bell
(setq ring-bell-function 'ignore)

;; stop cursor blinking and make sure it's a box
(set-default 'cursor-type 'box)
(blink-cursor-mode 0)

;; maximize at startup
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; This is silly...
;; smooth scrolling and minimap
;; (use-package sublimity
;;   :ensure t
;;   :init
;;   (setq auto-hscroll-mode nil) 
;;   :config
;;   (use-package sublimity-scroll)
;;   (use-package sublimity-map)
;;   (use-package sublimity-attractive)
;;   (setq sublimity-mode 1
;;         sublimity-scroll-weight 10
;;         sublimity-scroll-drift-length 5
;;         sublimity-map-size 20
;;         sublimity-map-fraction 0.3
;;         sublimity-map-text-scale -7
;;         sublimity-map-set-delay 30
;;         sublimity-attractive-centering-width nil))

;; set line numbers and highlight current line
(global-hl-line-mode +1)
(global-linum-mode 1)


;;TODO
;; modeline
;; decide about sublimity



(provide 'appearance)
