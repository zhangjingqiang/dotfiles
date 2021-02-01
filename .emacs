;; package archive
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;; fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; default state
(setq evil-default-state 'emacs)

;; mark command
(global-set-key (kbd "M-SPC") 'set-mark-command)
