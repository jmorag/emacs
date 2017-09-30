;; Version control: git and projectile

;; From stackoverflow:
(defvar --backup-directory (concat user-emacs-directory "backups"))
(if (not (file-exists-p --backup-directory))
    (make-directory --backup-directory t))
(setq backup-directory-alist `(("." . ,--backup-directory)))
(setq make-backup-files t               ; backup of a file the first time it is saved.
      backup-by-copying t               ; don't clobber symlinks
      version-control t                 ; version numbers for backup files
      delete-old-versions t             ; delete excess backup files silently
      kept-old-versions 2               ; oldest versions to keep when a new numbered backup is made (default: 2)
      kept-new-versions 2               ; newest versions to keep when a new numbered backup is made (default: 2)
      auto-save-default t               ; auto-save every buffer that visits a file
      auto-save-timeout 30              ; number of seconds idle time before auto-save (default: 30)
      auto-save-interval 300            ; number of keystrokes between auto-saves (default: 300)
      )

;; Magit, the git porcelin inside emacs
(use-package magit
  :ensure t
  :commands magit-status
  )

(use-package evil-magit
  :ensure t
  :init
  (require 'magit)
  :commands magit-status
  )

;; Projectile
(use-package projectile
  :ensure t
  :init
  (use-package counsel-projectile :ensure t)
  :commands
  (counsel-projectile
   projectile-find-file)
  :config
  (projectile-mode 1)
  (counsel-projectile-on)
  )


(provide 'versioncontrol)
