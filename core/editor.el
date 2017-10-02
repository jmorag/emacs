;; Make emacs an actually nice editor
;; (borrowing heavily from Doom)


;; Set UTF-8 as default
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Hard line break after 70 columns
(setq-default fill-column 70)
(add-hook 'text-mode-hook 'auto-fill-mode)

;; Close parentheses (Doom code)
(use-package smartparens
  :ensure t
  :config
  (setq sp-autowrap-region nil ; let evil-surround handle this
        sp-highlight-pair-overlay nil
        sp-cancel-autoskip-on-backward-movement nil
        sp-show-pair-delay 0
        sp-max-pair-length 3)
  (require 'smartparens-config)
  (smartparens-global-mode 1)
  )

;; Aggresively indent everything
(use-package aggressive-indent
  :ensure t
  :config
  (global-aggressive-indent-mode 1)
  )

;; Begin evil
(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  ;; give emacs bindings in insert modes a try
  (setq evil-disable-insert-state-bindings t)
  )

;; General.el
(use-package general
  :ensure t
  :init
  (require 'evil)
  :config
  (general-evil-setup t)
  )

;; Commenting
(use-package evil-nerd-commenter
  :ensure t
  :init
  (require 'evil)
  (require 'general)
  )

;; Vim-surround
(use-package evil-surround
  :ensure t
  :init
  (require 'evil)
  :config
  (global-evil-surround-mode 1)
  )

;; Fix the path so it can access everything that the shell can
(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  )




(provide 'editor)
