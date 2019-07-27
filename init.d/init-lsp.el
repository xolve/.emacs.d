(use-package lsp-mode :ensure t
  :commands lsp)

(use-package lsp-ui :ensure t
  :after lsp-mode
  :hook (lsp-mode . lsp-ui-mode))

(use-package company-lsp :ensure t
  :after (lsp-mode company)
  :config
  (push 'company-lsp company-backends))

(use-package lsp-treemacs
  :commands lsp-treemacs-errors-list)

(provide 'init-lsp)
