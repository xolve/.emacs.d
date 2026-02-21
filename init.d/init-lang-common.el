;;; init-lang-common.el --- -*- lexical-binding: t -*-

(add-hook 'prog-mode-hook 'subword-mode)

(add-hook 'prog-mode-hook
          (lambda () (add-hook 'before-save-hook 'delete-trailing-whitespace nil t)))

(provide 'init-lang-common)
