;; Colours
(require 'color-theme-solarized)
'(color-theme-solarized-light)

;; Chrome
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-screen t)
(unless (eq system-type 'darwin)
  (menu-bar-mode -1))

;; Modeline
(column-number-mode t)
(require 'nyan-mode)
(nyan-mode t)

;; Movement
(windmove-default-keybindings) ;; Shift+arrow window changes

;; Behaviour
(fset 'yes-or-no-p 'y-or-n-p)
(require 'flymake-cursor)

;; Global bindings
(global-set-key (kbd "C-x g") 'magit-status)
