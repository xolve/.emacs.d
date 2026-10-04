;;; init-display-config.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Do not show startup screen
(setq inhibit-startup-screen t)

;; Prevent font-cache GC freezes (especially with icon fonts)
(setq inhibit-compacting-font-caches t)

;; Scratch buffer be empty and not contain any text
(setq initial-scratch-message nil)
(setq initial-major-mode 'fundamental-mode)

(column-number-mode 1)

(transient-mark-mode 1)
(setq mark-even-if-inactive t)


;; Set default font
(set-frame-font "JetBrainsMono-10")

;; Include current buffer name in the title bar
(setq frame-title-format "%b - emacs")

;; Highlight matching paranthesis
(show-paren-mode 1)

(setq-default line-spacing 1)

;; Setup nerd-icons
;; M-x nerd-icons-install-fonts
;; Installation path: ~/.local/share/fonts/
(use-package nerd-icons
  :custom
  (nerd-icons-color-icons nil))

;; theme
(when (window-system)
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (use-package material-theme)
  (load-theme 'material t)

  (global-hl-line-mode 1)
  (setq tool-bar-border 0)

  (use-package all-the-icons
    :config
    (add-to-list
     'all-the-icons-mode-icon-alist
     '(package-menu-mode all-the-icons-octicon "package" :v-adjust 0.0)))

  (use-package all-the-icons-dired :hook
    (dired-mode . all-the-icons-dired-mode)))


(global-display-line-numbers-mode 1)

;; Avoid jitter in line numbers
(setq-default display-line-numbers-width-start t)

(set-terminal-coding-system 'utf-8)

;; For better scrolling in emacs
(setq scroll-bar-mode (quote right))
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; three lines at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-preserve-screen-position t) ;; Scroll without moving cursor

;; Change font size with Ctrl + mouse wheel
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

(use-package highlight-indent-guides
  :hook
  (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-responsive 'stack)
  (setq highlight-indent-guides-delay 0.1)
  (setq highlight-indent-guides-method 'character)
  )

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package centaur-tabs
  :defer t
  :config
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-set-bar 'over)
  (setq centaur-tabs-set-modified-marker t)
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(provide 'init-display-config)
;;; init-display-config.el ends here
