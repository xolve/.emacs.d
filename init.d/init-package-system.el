;;; init-package-system.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'package)
(setq package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; Enable defer and ensure by default for use-package
(setq use-package-always-defer t
      use-package-always-ensure t
      use-package-expand-minimally t)

(use-package general)

(provide 'init-package-system)
;;; init-package-system.el ends here
