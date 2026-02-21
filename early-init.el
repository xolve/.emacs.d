;;; early-init.el --- Early Initialization -*- lexical-binding: t -*-

;; Defer garbage collection during startup for better performance
(setq gc-cons-threshold most-positive-fixnum)

;; Suppress file-name-handler-alist during startup for faster file loading
(defvar my--file-name-handler-alist file-name-handler-alist)
(setq file-name-handler-alist nil)
(add-hook 'emacs-startup-hook
          (lambda () (setq file-name-handler-alist my--file-name-handler-alist)))

;; Faster rendering by avoiding some UI elements early
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Prevent package.el from loading packages before init.el
;; This allows use-package to manage them correctly.
(setq package-enable-at-startup nil)

;; Use UTF-8 everywhere
(set-language-environment "UTF-8")

(provide 'early-init)
;;; early-init.el ends here
