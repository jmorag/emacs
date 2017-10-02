;; Python Configuration
(use-package elpy
  :ensure t
  :commands 'python-mode
  :config
  (elpy-enable)
  (elpy-use-ipython)
  )

(provide 'lang-python)
