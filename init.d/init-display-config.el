;; Do not show startup screen
(setq inhibit-startup-screen t)


;; Scratch buffer be empty and not contain any text
(setq initial-scratch-message nil)
(setq initial-major-mode 'fundamental-mode)


;; do not show tool-bar
(tool-bar-mode -1)

(setq column-number-mode t)


(setq transient-mark-mode 1)
(setq mark-even-if-inactive t)


;; Include current buffer name in the title bar
(setq frame-title-format "%b - emacs")


;; Highlight matching paranthesis
(setq show-paren-mode t)

(setq-default line-spacing 1)

;; theme
(when (window-system)
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (use-package material-theme :ensure t)
  (load-theme 'material t)

  (global-hl-line-mode 1)
  (setq tool-bar-border 0)
  
  (use-package all-the-icons
    :config
    (add-to-list
     'all-the-icons-mode-icon-alist
     '(package-menu-mode all-the-icons-octicon "package" :v-adjust 0.0)))
  
  (use-package all-the-icons-dired
    :hook
    (dired-mode . all-the-icons-dired-mode)))


(global-display-line-numbers-mode 1)

(set-terminal-coding-system 'utf-8)

;; For better scrolling in emacs
(setq scroll-bar-mode (quote right))
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; three lines at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-preserve-screen-position t) ;; Scroll without moving cursor

(use-package highlight-indent-guides
  :ensure t
  :hook
  (prog-mode . highlight-indent-guides-mode)
  :config
  (setq highlight-indent-guides-responsive 'stack)
  (setq highlight-indent-guides-delay 0)
  (setq highlight-indent-guides-method 'character)
  )

(use-package rainbow-delimiters :ensure t)
(define-globalized-minor-mode global-rainbow-delimiters-mode
  rainbow-delimiters-mode
  (lambda ()
    (rainbow-delimiters-mode t)))
(global-rainbow-delimiters-mode t)

(use-package centaur-tabs
  :demand
  :config
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-set-bar 'over)
  (setq centaur-tabs-set-modified-marker t)
  (centaur-tabs-mode t)
  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(provide 'init-display-config)
