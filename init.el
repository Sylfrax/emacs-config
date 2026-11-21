;; -*- lexical-binding: t; -*-

(defconst my/lisp-dir (expand-file-name "lisp" user-emacs-directory))

(dolist (dir '("init" "plugs/ui" "plugs/lsp" "plugs/tools" "opts"))
  (add-to-list 'load-path (expand-file-name dir my/lisp-dir)))

(load "init-package")

(load "colortheme")
(load "tree-sit")
(load "p-dashboard")
(load "ranbow-pair")
(load "line")

(load "p-magit")
(load "cmp")

(load "editing")
(load "keymap")

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

