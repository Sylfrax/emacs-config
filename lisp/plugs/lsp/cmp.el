;; -*- lexical-binding: t; -*-

(use-package markdown-mode
  :ensure t)


(use-package company
  :ensure t
  :hook (after-init . global-company-mode)
  :config
  ;; 输入 1 个字符后就开始补全（默认是 3）
  (setq company-minimum-prefix-length 1)
  ;; 停止输入 0.1 秒后弹出补全（默认是 0.5）
  (setq company-idle-delay 0.1)
  ;; 对齐候选词右侧的注释/类型信息，看起来更整齐
  (setq company-tooltip-align-annotations t))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))

(use-package flycheck
  :ensure t
  :hook ((after-init . global-flycheck-mode)
         ;; 启用行内诊断标注
         (flycheck-mode . flycheck-annotate-mode))
  :config
  ;; 让 Flycheck 接管 Eglot 的 LSP 诊断
  (global-flycheck-eglot-mode 1))
(flymake-mode -1)

;; Eglot 通常是内置的，确保在需要的模式中启动
(add-hook 'eglot-managed-mode-hook
          (lambda ()
            ;; 确保 Corfu 在 eglot 管理的 buffer 中正常工作
            (setq-local completion-styles '(orderless basic))))
