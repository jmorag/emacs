;; Latex configuration

(use-package tex
  :ensure auctex
  :commands TeX-latex-mode
  :config
  (setq TeX-auto-save t)
  (setq TeX-save-query nil)
  (setq TeX-parse-self t)
  (setq TeX-PDF-mode t)
  )

(use-package latex-preview-pane
  :ensure t
  )

(provide 'lang-latex)
