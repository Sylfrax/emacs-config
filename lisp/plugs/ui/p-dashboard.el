;; -*- lexical-binding: t; -*-

(use-package dashboard
  :ensure t
  :config
  ;; 1. 基础外观设置
  (setq dashboard-banner-logo-title "Welcome to Emacs (Terminal)")
  (setq dashboard-startup-banner "~/.emacs.d/lisp/plugs/ui/dash-ascii.txt") ; 终端下也可用 'logo-braille 或整数
  (setq dashboard-center-content t)
  (setq dashboard-vertically-center-content t)

  ;; 2. 显示内容（按需调整）
  (setq dashboard-items '((recents   . 5)
                          (bookmarks . 5)
                          (projects  . 5)
                          (agenda    . 5)))

  ;; 3. 终端图标设置（关键）
  ;; 注意：必须确保已安装 nerd-icons 包，且终端字体支持 Nerd Fonts
  (setq dashboard-display-icons-p t)     ; 允许在终端显示图标
  (setq dashboard-icon-type 'nerd-icons) ; 使用 nerd-icons
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)

  ;; 4. 启动钩子（常规方式）
  (dashboard-setup-startup-hook)

  ;; 5. 确保通过 emacs -nw 启动时能正确显示
  ;; 对于单纯的终端启动，initial-buffer-choice 是更可靠的方式
  (setq initial-buffer-choice 'dashboard-open)
  (custom-set-faces
 '(dashboard-heading    ((t (:foreground "#00ffff"))))   ; 区块标题
 '(dashboard-banner-logo-title ((t (:foreground "#0bffff"))))
 '(dashboard-text-banner ((t (:foreground "#92ffff")))))) ; 顶部标题文字

;; 确保 nerd-icons 被加载
(use-package nerd-icons
  :ensure t)
