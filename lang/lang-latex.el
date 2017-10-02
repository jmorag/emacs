;; Latex configuration

(use-package tex
  :ensure auctex
  :commands TeX-latex-mode
  :config
  (setq TeX-auto-save t)
  (setq TeX-save-query nil)
  (setq TeX-parse-self t)
  (setq TeX-PDF-mode t)
  (setq-default TeX-master "master") ; All master files called "master"
  )

(use-package latex-preview-pane
  :ensure t
  :after auctex
  :config
  (latex-preview-pane-enable)
  )

;; local configuration for TeX modes
(defun my-latex-mode-setup ()
  (setq-local company-backends
              (append '((company-math-symbols-latex company-latex-commands))
                      company-backends)))

(use-package company-math
  :ensure t
  :after company
  :config
  (my-latex-mode-setup)
  )

(provide 'lang-latex)
