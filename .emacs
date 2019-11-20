;; package archive
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
;; fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; mark command
(global-set-key (kbd "M-SPC") 'set-mark-command)
;; line number
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
;; default state
(setq evil-default-state 'emacs)
