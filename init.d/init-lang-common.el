(add-hook 'prog-mode-hook 'subword-mode)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'init-lang-common)
