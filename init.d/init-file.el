;;; init-file.el --- -*- lexical-binding: t -*-

(use-package ignoramus)
(ignoramus-setup)

(recentf-mode 1)

(setq require-final-newline 'query)

(prefer-coding-system 'utf-8)

;; Manage backup files
(setq backup-directory-alist '((".*" . "~/.emacs.d/backup")))
(setq delete-old-versions t)

;; Manage autosave files
(setq auto-save-list-file-prefix "~/.emacs.d/autosave/")
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosave/" t)))

(setq tramp-auto-save-directory "~/.emacs.d/tramp.d/autosave")

(setq version-control t)

(use-package magit
  :bind ("C-x g" . magit-status))

(setq dired-find-subdir t)
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET")
    (lambda () (interactive) (dired-find-alternate-file)))
  (define-key dired-mode-map (kbd "^")
    (lambda () (interactive) (find-alternate-file ".."))))
(setq dired-auto-revert-buffer t)
(setq dired-ls-F-marks-symlinks t)
(setq dired-recursive-copies 'always)
(setq dired-listing-switches
      (concat dired-listing-switches " -alhF --group-directories-first -v"))

(provide 'init-file)
