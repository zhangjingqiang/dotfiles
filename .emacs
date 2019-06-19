(setq package-enable-at-startup nil)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-set-key (kbd "M-SPC") 'set-mark-command)
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
