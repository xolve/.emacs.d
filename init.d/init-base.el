;;; init-base.el --- -*- lexical-binding: t -*-

;; Set a reasonable threshold for runtime (100MB)
(defvar my-gc-threshold 100000000)

;; Reset GC threshold after startup to maintain performance
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold my-gc-threshold)))

(setq confirm-kill-emacs 'y-or-n-p)

(provide 'init-base)
