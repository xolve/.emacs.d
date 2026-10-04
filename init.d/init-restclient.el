;;; init-restclient.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package restclient
  :config
  (setq restclient-inhibit-cookies t)
  )

(use-package company-restclient
  :config
  (add-to-list 'company-backends 'company-restclient)
  )

(provide 'init-restclient)
;;; init-restclient.el ends here
