(add-to-list 'load-path "~/.emacs.d/init.d")
(require 'init-base)
(require 'init-package-system)

;; Load custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

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
