;; -*- lexical-binding: t; -*-

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package highlight-indent-guides
  :ensure t
  :hook (prog-mode . highlight-indent-guides-mode)
  :config
  ;; 将默认的显示方式设为 'character'，看起来更像线条
  (setq highlight-indent-guides-method 'character)
  ;; 开启 Responsive Guides，'top' 表示只高亮当前层
  (setq highlight-indent-guides-responsive 'stack)
  (setq highlight-indent-guides-auto-enabled nil)
;; 例如，将当前层（top）的字符颜色设为更亮的橙色
  (set-face-foreground 'highlight-indent-guides-top-character-face "#00ffff"))
