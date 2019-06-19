;; 设置安装包源
(setq package-enable-at-startup nil)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; 基本设置
(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;自动全屏
(global-set-key (kbd "M-SPC") 'set-mark-command)             ;更改启用标记命令
(global-linum-mode t)                                        ;显示行号
