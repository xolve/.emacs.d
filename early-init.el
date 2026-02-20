;;; early-init.el --- Early Initialization -*- lexical-binding: t -*-

;; Defer garbage collection during startup for better performance
(setq gc-cons-threshold most-positive-fixnum)

;; Faster rendering by avoiding some UI elements early
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Prevent package.el from loading packages before init.el
;; This allows use-package to manage them correctly.
(setq package-enable-at-startup nil)

;; Use UTF-8 everywhere
(set-language-environment "UTF-8")

(provide 'early-init)
;;; early-init.el ends here
