(use-package electric :ensure t)

(use-package rust-mode :ensure t)

(use-package cargo :ensure t)

(use-package flycheck-rust :ensure t)

(setq lsp-rust-server 'rust-analyzer)

;; (add-hook 'rust-mode-hook #'racer-mode)
;; (add-hook 'rust-mode-hook
;;           '(lambda ()
;; 	     (setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
;; 	     (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))
;;              (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
;; 	     (electric-pair-mode 1)))
;; (add-hook 'racer-mode-hook #'eldoc-mode)
;; (add-hook 'racer-mode-hook #'company-mode)

(add-hook 'rust-mode-hook 'lsp)

(add-hook 'rust-mode-hook 'company-mode)

(add-hook 'flycheck-mode-hook 'flycheck-rust-setup)

(provide 'init-lang-rust)
