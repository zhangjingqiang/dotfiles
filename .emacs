;; Change mark command
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; Show line number
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Git
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)

;; Markdown
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (markdown-mode which-key wgrep web-mode use-package undo-tree spacemacs-theme smex smartparens robe rinari pyenv-mode py-autopep8 pip-requirements phpunit org-projectile org-bullets neotree magit-popup magit js2-refactor js-comint impatient-mode hlinum go-eldoc flymake-go flycheck-mix expand-region exec-path-from-shell enh-ruby-mode elpy dashboard counsel-projectile company-tern company-go avy alchemist ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; [Magit](https://magit.vc)
;; [Markdown Mode for Emacs](https://jblevins.org/projects/markdown-mode/)
