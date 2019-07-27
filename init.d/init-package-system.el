(require 'package)
(setq package-archives '(("org"          . "http://orgmode.org/elpa/")
                         ("gnu"          . "http://elpa.gnu.org/packages/")
                         ("melpa"        . "http://melpa.org/packages/")
                         ))
(package-initialize)


(unless (package-installed-p 'use-package) ;unless it is already installed
  (package-refresh-contents) ;updage packages archive
  (package-install 'use-package)) ;and install the most recent version of use-package


(require 'use-package)

;; Enable defer and ensure by default for use-package
(setq use-package-always-defer t
      use-package-always-ensure t)

(use-package general :ensure t)


(provide 'init-package-system)
