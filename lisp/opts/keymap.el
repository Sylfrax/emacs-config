;; -*- lexical-binding: t; -*-


;; 文件与缓冲区
(global-set-key (kbd "C-c f") #'find-file)
(global-set-key (kbd "C-c q") #'save-buffers-kill-terminal)
(global-set-key (kbd "C-c s") #'save-buffer)
(global-set-key (kbd "C-c b") #'switch-to-buffer)
(global-set-key (kbd "C-c k") #'kill-buffer)

;; 编辑辅助
(global-set-key (kbd "C-c r") #'query-replace)
(global-set-key (kbd "C-c g") #'goto-line)

(global-set-key (kbd "C-c l") (lambda ()
				(interactive)
				(load-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-c c") #'kill-ring-save)
(global-set-key (kbd "C-c z") #'kill-region)
