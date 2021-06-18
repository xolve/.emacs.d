(use-package lsp-mode :ensure t
  :commands lsp)

(use-package lsp-ui :ensure t
  :after lsp-mode
  :config
  (setq lsp-ui-doc-position 'bottom)
  :hook (lsp-mode . lsp-ui-mode))

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(use-package dap-mode :ensure t
  :hook
  (lsp-mode . dap-mode)
  (lsp-mode . dap-ui-mode))

(provide 'init-lsp)
