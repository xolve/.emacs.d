;;; init.el --- Early Initialization -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-to-list 'load-path "~/.emacs.d/init.d")
(require 'init-package-system)
(require 'init-base)

;; Load custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(use-package delsel
  :ensure nil
  :config
  (delete-selection-mode +1))

(require 'init-display-config)
(require 'init-ediff)
(require 'init-editor)
(require 'init-file)
(require 'init-keyboard)
(require 'init-lang-common)
(require 'init-lang-c)
(require 'init-lang-js)
(require 'init-lang-python)
(require 'init-lang-rust)
(require 'init-lang-scala)
(require 'init-lang-typescript)
(require 'init-lsp)
(require 'init-projectile)
(require 'init-restclient)
(require 'init-session)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(org-agenda-files '("~/first.org"))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
