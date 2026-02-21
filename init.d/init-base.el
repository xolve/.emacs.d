;;; init-base.el --- -*- lexical-binding: t -*-

;; Use gcmh to manage GC dynamically — high threshold while
;; active, GC runs during idle time.
(use-package gcmh
  :ensure t
  :diminish
  :hook (emacs-startup . gcmh-mode)
  :custom
  (gcmh-idle-delay 'auto)
  (gcmh-auto-idle-delay-factor 10)
  (gcmh-high-cons-threshold (* 100 1024 1024)))

(setq confirm-kill-emacs 'y-or-n-p)

(provide 'init-base)
