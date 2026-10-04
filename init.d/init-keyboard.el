;;; init-keyboard.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(delete-selection-mode 1)

(define-key global-map (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "<home>") 'move-beginning-of-line)
(global-set-key (kbd "<end>") 'move-end-of-line)

;; Taken from https://protesilaos.com/codelog/2024-11-28-basic-emacs-configuration/
(defun prot/keyboard-quit-dwim ()
  "Do-What-I-Mean behaviour for a general `keyboard-quit'.

The generic `keyboard-quit' does not do the expected thing when
the minibuffer is open.  Whereas we want it to close the
minibuffer, even without explicitly focusing it.

The DWIM behaviour of this command is as follows:

- When the region is active, disable it.
- When a minibuffer is open, but not focused, close the minibuffer.
- When the Completions buffer is selected, close it.
- In every other case use the regular `keyboard-quit'."
  (interactive)
  (cond
   ((region-active-p)
    (keyboard-quit))
   ((derived-mode-p 'completion-list-mode)
    (delete-completion-window))
   ((> (minibuffer-depth) 0)
    (abort-recursive-edit))
   (t
    (keyboard-quit))))

(define-key global-map (kbd "C-g") #'prot/keyboard-quit-dwim)
;; end DWIM behavior

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
