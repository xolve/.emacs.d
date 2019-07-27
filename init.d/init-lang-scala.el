(use-package scala-mode :ensure t
  :interpreter
  ("scala" . scala-mode)
  :config
  (setq scala-indent:align-parameters t)
  (setq scala-indent:indent-value-expression t))

(add-hook 'scala-mode-hook #'lsp-deferred)

(use-package sbt-mode :ensure t)

(provide 'init-lang-scala)
