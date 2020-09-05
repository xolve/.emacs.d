(use-package scala-mode :ensure t
  :interpreter
  ("scala" . scala-mode)
  :config
  (setq scala-indent:align-parameters t)
  (setq scala-indent:indent-value-expression t))

(add-hook 'scala-mode-hook #'lsp-deferred)

(use-package lsp-metals :ensure t)

;; Enable sbt mode for executing sbt commands
(use-package sbt-mode :ensure t
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map)

   ;; sbt-supershell kills sbt-mode:  https://github.com/hvesalai/emacs-sbt-mode/issues/152
   (setq sbt:program-options '("-Dsbt.supershell=false"))
)

(provide 'init-lang-scala)
