;; Try out stright-el package manager

;; Bootstrap straight.el
(let ((bootstrap-file (concat user-emacs-directory "straight/bootstrap.el"))
      (bootstrap-version 2))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Get use package (please don't break rest of config)
(straight-use-package 'use-package)



(provide 'packages)


;; Old package management with package.el
;;(setq package-enable-at-startup nil)
;;(setq package-archives '(
;;("melpa"     . "https://melpa.org/packages/")
;;("melpa-stable" . "http://stable.melpa.org/packages/")
;;("org"       . "http://orgmode.org/elpa/")
;;("gnu"       . "http://elpa.gnu.org/packages/")
;;("marmalade" . "http://marmalade-repo.org/packages/")
;;("elpy"      . "http://jorgenschaefer.github.io/packages/")
;;)
;;) ;; add all desireable repositories to list
;;(package-initialize)
;;
;;
;;(when (not package-archive-contents)
;;(package-refresh-contents))
;;
;;(unless (package-installed-p 'use-package)
;;(package-install 'use-package)) ;; bootstrap use-package
