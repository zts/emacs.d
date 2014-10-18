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
;; move line/region up/down with M-n/M-p
(require 'move-text)
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)


;; Behaviour
(fset 'yes-or-no-p 'y-or-n-p)
(require 'flymake-cursor)
(desktop-save-mode 1)

;; save desktop state periodically
;; http://stackoverflow.com/questions/3841459/how-to-periodically-run-a-task-within-emacs
;; TODO FIX behaves poorly when recovering from a crash
(run-with-timer 0 (* 60 60) 'desktop-save-in-desktop-dir)
(run-with-timer 0 (* 60 60) 'recentf-save-list)

;; Global bindings
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "M-l") 'goto-line) ;; formerly ignore downcase-word
