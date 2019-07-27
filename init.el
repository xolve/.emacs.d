;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/init.d")
(require 'init-package-system)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package company :ensure t
  :init
  (setq company-tooltip-align-annotations t)
  (setq company-minimum-prefix-length 2)
  :config
  (setq company-idle-delay 0)
  )

(use-package eldoc :ensure t)

(require 'init-display-config)
(require 'init-ediff)
(require 'init-editor)
(require 'init-file)
(require 'init-keyboard)
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
 '(package-selected-packages
   (quote
    (lsp-treemacs company-restclient restclient treemacs-projectile treemacs projectile company-lsp lsp-ui tide sbt-mode scala-mode zerodark-theme which-key use-package smex rainbow-delimiters racer magit lsp-rust ignoramus highlight-indent-guides general flycheck-rust flx-ido editorconfig company-tern cargo))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
