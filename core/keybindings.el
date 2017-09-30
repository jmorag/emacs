;; Refactor keybindings into their own special file

;; Require all relevant packages
(require 'evil)
(require 'general)
(require 'evil-nerd-commenter)
(require 'evil-surround)
(require 'windmove)


;; Begin actual keybindings

;; Make "j" and "k" traverse visual lines
(mmap "j" 'evil-next-visual-line
      "k" 'evil-previous-visual-line)

;; Bind f to the upgraded avy version
(mmap "f" 'avy-goto-char-in-line)
(general-define-key
 :states '(normal insert emacs)
 "C-f" 'avy-goto-char-timer
 )

;; Fix "Y" so it behaves like "C" and "D"
(defun copy-to-end-of-line ()
  (interactive)
  (evil-yank (point) (point-at-eol)))

(nmap "Y" 'copy-to-end-of-line)

;; Fix "C-u" and "C-d" so they work for proper scrolling
(nmap "C-u" 'evil-scroll-up)
(setq evil-want-C-u-scroll t)
(setq evil-want-C-d-scroll t)

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

;; Move between widows with "C-<hjkl>"
(nmap "C-h" 'windmove-left)
(nmap "C-j" 'windmove-down)
(nmap "C-k" 'windmove-up)
(nmap "C-l" 'windmove-right)

;; Scroll with "C-<jkud>" in Ivy buffer
(general-define-key
 :keymaps 'ivy-mode-map
 "C-j"    'ivy-next-line
 "C-k"    'ivy-previous-line
 ;; Up and down are weirdly switched in the ivy minibuffer
 "C-u"    'ivy-scroll-down-command 
 "C-d"    'ivy-scroll-up-command 
 "C-f"    'ivy-avy
 )

;; Select new company completion with "C-<jk>"
(general-define-key
 :states  '(insert)
 :keymaps 'company-mode-map
 "C-j"    'company-select-next
 "C-k"    'company-select-previous
 )

;; Spacemacs-esque leader keys
(general-define-key
 :states '(normal motion emacs)
 :prefix "SPC"

 ;; "SPC SPC" "M-x" is nice
 "SPC" '(counsel-M-x)

 ;; "e" bindings, for evaluate
 "e" '(eval-buffer)
 
 ;; "h" bindings, for help
 "h"  '(:ignore t :which-key "Help")
 "hv" '(counsel-describe-variable)
 "hf" '(counsel-describe-function)
 "hk" '(describe-key)
 "hc" '(describe-key-briefly)

 ;; "f" bindings, for files
 "f"  '(:ignore t :which-key "Files")
 "ff" '(counsel-find-file)
 "fr" '(counsel-recentf)

 ;; Swiper search
 "/"  '(swiper)
 ) 




(provide 'keybindings)
