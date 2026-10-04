;;; init-lsp.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package lsp-mode
  :commands lsp
  :custom
  (lsp-idle-delay 0.5)
  (lsp-completion-provider :capf)
  (lsp-headerline-breadcrumb-enable nil)     ; reduces redisplay work
)

(setq read-process-output-max (* 1024 1024)) ; 1MB process chunk read

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
;;; init-lsp.el ends here
