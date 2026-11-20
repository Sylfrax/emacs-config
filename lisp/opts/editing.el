;; -*- lexical-binding: t; -*-

(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode t)

(electric-pair-mode 1)

(global-hl-line-mode 1)

(xterm-mouse-mode 1)

(which-key-mode 1)
(setq which-key-idle-delay 0.3)

(setq make-backup-files nil)

(setq-default truncate-lines t)

;; 把备份文件（*~）挪到临时目录
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))

;; 把自动保存文件（#*#）挪到临时目录
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(global-tab-line-mode 1)
(setq elisp-fontify-semantically t)
