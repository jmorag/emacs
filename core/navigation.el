;; Navigation 

;; Avy - for jumping gracefully around buffers
(use-package avy
  :ensure t
  :commands
  (avy-goto-char
   avy-goto-char-2
   avy-goto-char-timer
   avy-goto-char-in-line
   avy-goto-line
   avy-org-goto-heading-timer
   avy-ivy)
  )

(provide 'navigation)
