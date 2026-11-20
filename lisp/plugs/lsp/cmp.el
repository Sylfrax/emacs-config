;; -*- lexical-binding: t; -*-

;; 补全前端：company
(use-package company
  :ensure t
  :hook ((eglot-managed-mode . company-mode)
         (emacs-lisp-mode . company-mode))
  :config
  (setq company-idle-delay 0.3)
  (global-set-key (kbd "TAB") #'company-indent-or-complete-common))
;; 悬浮文档：eldoc-box
(use-package eldoc-box
  :ensure t
  :hook (eglot-managed-mode . eldoc-box-hover-at-point-mode))
  :config
  (setq eldoc-idle-delay 0.3)
