;; Search, navigation, and completion:
;; this module includes
;;   - ivy
;;   - counsel
;;   - swiper
;;   - which-key
;;   - avy
;;   - YaSnippet
;;   - company


;; Ivy (taken from "How to make your own Spacemacs")
(use-package ivy
  :ensure t
  :diminish (ivy-mode . "") ; does not display ivy in the modeline
  :init (ivy-mode 1)        ; enable ivy globally at startup
  :config
  (setq ivy-use-virtual-buffers t)   ; extend searching to bookmarks and …
  (setq ivy-height 10)               ; set height of the ivy window
  (setq ivy-count-format "(%d/%d) ") ; count format, from the ivy help page
  )

;; Counsel (same as Ivy above)
(use-package counsel
  :ensure t
  :commands          ; Load counsel when any of these commands are invoked
  (counsel-M-x       ; M-x use counsel
   counsel-find-file ; C-x C-f use counsel-find-file
   counsel-recentf   ; search recently edited files
   counsel-git       ; search for files in git repo
   counsel-git-grep  ; search for regexp in git repo
   counsel-ag        ; search for regexp in git repo using ag
   counsel-locate)   ; search for files or else using locate
  )


;; Swiper
(use-package swiper
  :ensure t
  :commands swiper
  )

;; Which key
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  :config
  (which-key-setup-side-window-bottom)
  (setq which-key-sort-order 'which-key-key-order-alpha
        which-key-side-window-max-width 0.33
        which-key-idle-delay 0.05)
  :diminish which-key-mode
  )

;; Company
(use-package company
  :ensure t
  :config
  (global-company-mode 1)
  ;; Configure YouCompleteMe-esque behavior
  (add-to-list 'company-frontends 'company-tng-frontend)
  )

;; YaSnippet
(use-package yasnippet
  :ensure t
  :after company
  :config
  (yas-global-mode 1)
  )

(use-package yasnippet-snippets
  :ensure t
  :after yasnipet
  )


(provide 'completion)
