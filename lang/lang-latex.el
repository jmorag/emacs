;; Latex configuration

(use-package tex
  :ensure auctex
  :config
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  )

(provide 'lang-latex)
