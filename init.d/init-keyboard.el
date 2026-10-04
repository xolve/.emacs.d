;;; init-keyboard.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(delete-selection-mode 1)

(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)


(setq x-select-enable-clipboard t)

(use-package ido
  :defer nil
  :config
  (ido-mode t)
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (setq ido-use-faces nil))

(use-package flx-ido
  :after ido
  :config
  (flx-ido-mode t))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  )

;; M-backspace should delete, rather than kill
;; From: http://www.emacswiki.org/emacs/BackwardDeleteWord
(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-region (point) (progn (forward-word arg) (point))))
(defun backward-delete-word (arg)
  "Delete characters backward until encountering the end of a word.
With argument, do this that many times."
  (interactive "p")
  (delete-word (- arg)))

(global-set-key (read-kbd-macro "<M-DEL>") 'backward-delete-word)


(provide 'init-keyboard)
;;; init-keyboard.el ends here
