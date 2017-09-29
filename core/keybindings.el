;; Refactor keybindings into their own special file

;; Require all relevant packages (not sure if actually necessary but oh well..)
(require 'evil)
(require 'general)
(require 'evil-nerd-commenter)
(require 'evil-surround)


;; Begin actual keybindings

;; Make "j" and "k" traverse visual lines
(mmap "j" 'evil-next-visual-line
      "k" 'evil-previous-visual-line)

;; bind fd to escape in insert mode
(imap "f"
      (general-key-dispatch 'self-insert-command
        :timeout 0.15
        "d" 'evil-normal-state))

;; switch ; and :
(mmap ";" 'evil-ex)
(mmap ":" 'evil-evil-repeat-find-char)
;; bind , to save
(mmap "," 'save-buffer)

;; Commenting:
(mmap "-" 'evilnc-comment-or-uncomment-lines)
(mmap "_" 'evilnc-comment-or-uncomment-paragraphs)



(provide 'keybindings)
