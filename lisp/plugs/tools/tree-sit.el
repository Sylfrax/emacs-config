;; -*- lexical-binding: t; -*-
(use-package treesit-auto
  :ensure t
  :custom
  (treesit-auto-install 'prompt)
  :config
  (treesit-auto-add-to-auto-mode-alist 'all)
  (global-treesit-auto-mode))

(setq treesit-language-source-alist
      '((python . ("https://github.com/tree-sitter/tree-sitter-python"))

	(elisp . ("https://github.com/Wilfred/tree-sitter-elisp"))))
