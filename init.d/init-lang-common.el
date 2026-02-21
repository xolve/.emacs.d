;;; init-lang-common.el --- -*- lexical-binding: t -*-

(add-hook 'prog-mode-hook 'subword-mode)

(add-hook 'prog-mode-hook
          (lambda () (add-hook 'before-save-hook 'delete-trailing-whitespace nil t)))

(use-package flycheck
  :hook (prog-mode . flycheck-mode))

(use-package company
  :init
  (setq company-tooltip-align-annotations t)
  (setq company-minimum-prefix-length 2)
  :config
  (setq company-idle-delay 0.2))

(use-package eldoc)

(provide 'init-lang-common)
