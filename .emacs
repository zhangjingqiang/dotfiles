;; Disable startup message and splash screen
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)

;; Set up package management (use-package)
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t) ;; Ensure packages are installed

;; UI settings
(menu-bar-mode -1) ;; Disable menu bar
(set-face-attribute 'default nil :font "monospace-12") ;; Set default font

;; Keybindings
(global-set-key (kbd "C-x C-s") 'save-buffer)
(global-set-key (kbd "C-x C-c") 'save-buffers-kill-emacs)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-/") 'redo)

;; Indentation settings
(setq-default indent-tabs-mode nil) ;; Use spaces for indentation
(setq-default tab-width 4) ;; Set tab width to 4 spaces
(setq-default indent-line-function 'insert-tab) ;;use tab key to indent.

;; Enable line numbers
(global-display-line-numbers-mode 1)

;; Enable visual line mode for soft wrapping
(global-visual-line-mode 1)

;; Highlight matching parentheses
(show-paren-mode 1)

;; Auto-revert buffers when files change on disk.
(global-auto-revert-mode 1)

;; Example use-package configuration for a theme (e.g., doom-themes)
(use-package doom-themes
  :init
  (load-theme 'doom-one t))
