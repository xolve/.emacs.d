;;; init-lsp.el --- -*- lexical-binding: t -*-

(use-package lsp-mode
  :commands lsp)

(use-package lsp-ui
  :after lsp-mode
  :config
  (setq lsp-ui-doc-position 'bottom)
  :hook (lsp-mode . lsp-ui-mode))

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(use-package dap-mode
  :commands (dap-debug dap-breakpoint-toggle))

(provide 'init-lsp)
