(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(use-package smex
  :ensure t
  :config
  (setq smex-history-length 128)
  (setq smex-prompt-string "smex M-x ")
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command))
(smex-initialize)

(setq indent-tabs-mode nil)

(setq backward-delete-char-untabify-method 'hungry)

(provide 'init-editor)
