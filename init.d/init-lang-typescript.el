;;; init-lang-typescript.el --- -*- lexical-binding: t -*-

(use-package tide)
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))

;; case insensitive code completion
(setq tide-completion-ignore-case t)

;; formats the buffer before saving
;(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(setq typescript-indent-level 2)

(provide 'init-lang-typescript)
