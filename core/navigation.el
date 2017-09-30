;; Navigation commands

;; For moving windows "normally," i.e. with "C-<hjkl>"
(use-package windmove
  :ensure t
  :commands
  (windmove-left
   windmove-right
   windmove-up
   windmove-down)
  )

;; Avy
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

