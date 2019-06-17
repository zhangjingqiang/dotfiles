;; 基本设置
(global-set-key (kbd "M-SPC") 'set-mark-command)             ;更改启用标记命令
(global-linum-mode t)                                        ;显示行号
(menu-bar-mode 0)                                            ;不显示菜单栏
(tool-bar-mode 0)                                            ;不显示工具栏
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

;; 编辑远程文件
(defun open-remote-file()
  (interactive)
  (find-file "/plink:user@192.168.0.1:/home/user"))
(define-key global-map [f9]  'open-remote-file)

; 安装包配置
; =============================== helm ===============================
(global-set-key (kbd "C-c b")     'helm-filtered-bookmarks)    ;书签
(global-set-key (kbd "C-x C-f")   'helm-find-files)            ;打开文件
(global-set-key (kbd "C-c l")     'helm-buffers-list)          ;已经打开的文档列
(global-set-key (kbd "M-x")       'helm-M-x)                   ;<alt+x>命令
; =============================== window-numbering ===============================
(window-numbering-mode t)
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)
; =============================== ace-jump-mode ===============================
(global-set-key (kbd "C-c SPC") 'ace-jump-word-mode)
; =============================== neotree ===============================
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
; =============================== all-the-icons ===============================
(require 'all-the-icons)
; =============================== find-file-in-project ===============================
(require 'find-file-in-project)
(global-set-key (kbd "C-c f") 'find-file-in-project)
; =============================== auto-complete ===============================
(global-auto-complete-mode t)
; =============================== auto-highlight-symbol ===============================
(global-auto-highlight-symbol-mode t)
; =============================== electric-spacing ===============================
(electric-pair-mode t)
; =============================== magit ===============================
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)
; =============================== undo-tree ===============================
(global-undo-tree-mode t)
; =============================== xcscope ===============================
(global-set-key (kbd "C-c g") 'cscope-find-global-definition)
; =============================== elpy ===============================
(elpy-enable)
(setq elpy-rpc-timeout nil)
; =============================== go-mode ===============================
(autoload 'go-mode "go-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
; =============================== yasnippet ===============================
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
; =============================== yasnippet-snippets ===============================
(yas-global-mode t)
; =============================== exec-path-from-shell ===============================
(let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path 
        (append
         (split-string-and-unquote path ":")
         exec-path)))
