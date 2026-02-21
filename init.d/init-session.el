;;; init-session.el --- -*- lexical-binding: t -*-

(add-hook 'window-setup-hook (lambda () (desktop-save-mode 1)))
(setq desktop-dirname             "~/.emacs.d/desktop/"
      desktop-base-file-name      "emacs.desktop"
      desktop-base-lock-name      "lock"
      desktop-path                (list desktop-dirname)
      desktop-save                t
      desktop-load-locked-desktop nil
      desktop-auto-save-timeout   30)

(setq desktop-globals-to-save
      '(dired-regexp-history
        extended-command-history
        file-name-history
        grep-find-history
        grep-history
        ido-buffer-history
        ido-last-directory-list
        ido-work-directory-list
        ido-work-file-list
        minibuffer-history
        org-clock-history
        org-refile-history
        org-tags-history
        query-replace-history
        read-expression-history
        regexp-history
        regexp-search-ring
        search-ring
        shell-command-history))


(provide 'init-session)
