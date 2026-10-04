;;; init-lang-go.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package go-mode :ensure t)
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
;;; init-lang-go.el ends here
