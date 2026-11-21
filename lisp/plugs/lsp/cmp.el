;; -*- lexical-binding: t; -*-


(use-package vertico
  :ensure t
  :init
  (vertico-mode 1))

(use-package markdown-mode
  :ensure t)

(use-package corfu
  :ensure t
  :custom
  (corfu-cycle t)                ;; 允许循环选择
  (corfu-auto t)                 ;; 开启自动补全
  (corfu-auto-prefix 2)          ;; 输入2字符后触发
  (corfu-auto-delay 0.2)         ;; 弹出延迟
  (corfu-preview-current nil)    ;; 不预览当前选中项 
  (corfu-quit-no-match 'separator)
  :init
  (global-corfu-mode 1)
  (corfu-popupinfo-mode 1)
  (setq corfu-popupinfo-delay 0.5))

;; 推荐搭配 Orderless 或 Flex 风格，以便更灵活地过滤 LSP 返回的候选
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides nil))

(use-package flycheck
  :ensure t
  :hook ((after-init . global-flycheck-mode)
         ;; 启用行内诊断标注
         (flycheck-mode . flycheck-annotate-mode))
  :config
  ;; 让 Flycheck 接管 Eglot 的 LSP 诊断
  (global-flycheck-eglot-mode 1))

;; Eglot 通常是内置的，确保在需要的模式中启动
(add-hook 'eglot-managed-mode-hook
          (lambda ()
            ;; 确保 Corfu 在 eglot 管理的 buffer 中正常工作
            (setq-local completion-styles '(orderless basic))))
