(use-package restclient :ensure t
  :config
  (setq restclient-inhibit-cookies t)
  )

(use-package company-restclient :ensure t
  :config
  (add-to-list 'company-backends 'company-restclient)
  )

(provide 'init-restclient)
