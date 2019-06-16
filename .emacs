;; 基本设置
(global-set-key (kbd "M-SPC") 'set-mark-command)             ;更改启用标记命令
(global-linum-mode t)                                        ;显示行号
(tool-bar-mode 0)                                            ;不显示工具栏
(menu-bar-mode 0)                                            ;不显示菜单栏
(scroll-bar-mode 0)                                          ;不显示滚动条
(setq ring-bell-function 'ignore)                            ;去除响铃声音
(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;自动全屏

;; 设置英文字体
(set-face-attribute
 'default nil :font "Courier New-18")

;; 设置配置文件快捷键
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs"))
(global-set-key (kbd "<f1>") 'open-init-file)

;; 设置扩展源
(setq package-enable-at-startup nil)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

; 安装包配置
; =============================== Helm ===============================
(global-set-key (kbd "C-c b")     'helm-filtered-bookmarks)    ;书签
(global-set-key (kbd "C-x C-f")   'helm-find-files)            ;打开文件
(global-set-key (kbd "C-c l")     'helm-buffers-list)          ;已经打开的文档列
(global-set-key (kbd "M-x")       'helm-M-x)                   ;<alt+x>命令
; =============================== Window Numbering ===============================
(window-numbering-mode t)
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)
; =============================== Jump Mode ===============================
(global-set-key (kbd "C-c SPC") 'ace-jump-word-mode)
; =============================== Neo Tree ===============================
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
; =============================== All the Icons ===============================
(require 'all-the-icons)
; =============================== Find File in Project ===============================
(require 'find-file-in-project)
(global-set-key (kbd "C-c f") 'find-file-in-project)
; =============================== Auto Complete ===============================
(global-auto-complete-mode t)
; =============================== Auto Highlight ===============================
(global-auto-highlight-symbol-mode t)
; =============================== Electric Pair ===============================
(electric-pair-mode t)
; =============================== Magit ===============================
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)
; =============================== Undotree ===============================
(global-undo-tree-mode t)
; =============================== cscope ===============================
(global-set-key (kbd "C-c g") 'cscope-find-global-definition)
; =============================== Python ===============================
(elpy-enable)
(setq elpy-rpc-timeout nil)
; =============================== Golang ===============================
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
; =============================== Snippets ===============================
(yas-global-mode t)
