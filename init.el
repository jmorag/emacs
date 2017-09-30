;; Introduction to the emacs rabbit-hole
;; Joseph Morag's .emacs.d/

;; allow emacs to find files in core and lang folders
(add-to-list 'load-path (concat user-emacs-directory "core")) 
(add-to-list 'load-path (concat user-emacs-directory "lang"))


(require 'packages)      ;; Repository initialization
(require 'appearance)    ;; Look pretty
(require 'editor)        ;; Evil and friends
(require 'completion)    ;; Ivy, company, swiper, counsel, YaSnippet, etc.
(require 'versioncontrol) ;; Magit and projectile
(require 'keybindings)   ;; My beautiful, custom keybinds
(require 'navigation)    ;; Avy and windmove
(require 'lang-python)   ;; python - trying out Elpy but might switch to anaconda
(require 'lang-latex)    ;; Latex, provided by AucTex


;; Required when using package.el but not straight.el
;;(package-initialize)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages
   (quote
    (smart-mode-line-powerline-theme smart-mode-line smartparens general dashboard hlinum nlinum-hl nlinum sublimity better-defaults use-package)))
 '(sublimity-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Menlo"))))
 '(nlinum-current-line ((t (:inherit linum :underline t :weight ultra-bold)))))
