(use-package electric :ensure t)

(use-package rust-mode :ensure t)

(use-package cargo :ensure t)

(use-package flycheck-rust :ensure t)

(use-package racer :ensure t)

(use-package lsp-rust :ensure t
  :after (lsp-mode)
  :config
  (setq lsp-rust-rls-command '("rustup" "run" "nightly" "rls")))


(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'rust-mode-hook
          '(lambda ()
	     (setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
	     (setq racer-rust-src-path (concat (getenv "HOME") "/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"))
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)
	     (electric-pair-mode 1)))
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(provide 'init-lang-rust)
