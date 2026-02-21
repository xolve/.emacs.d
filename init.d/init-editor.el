;;; init-editor.el --- -*- lexical-binding: t -*-

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package smex
  :ensure t
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command))
  :config
  (setq smex-history-length 128)
  (setq smex-prompt-string "smex M-x ")
  (smex-initialize))

(setq indent-tabs-mode nil)

(setq backward-delete-char-untabify-method 'hungry)

(provide 'init-editor)
