;;; init-lang-elisp.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package aggressive-indent
  :defer 2
  :hook (emacs-lisp-mode . aggressive-indent-mode))

(provide 'init-lang-elisp)
;;; init-lang-elisp.el ends here
