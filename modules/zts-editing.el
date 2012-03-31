;; Editing tweaks

(setq-default indent-tabs-mode nil)
'(tab-width 4)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(delete-selection-mode t)
(show-paren-mode t)

;; spell-checking
(setq-default ispell-program-name "aspell")
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; programming hooks
;; (add-hook 'prog-mode-hook 'linum-mode)
;; (setq linum-format "%4d ")

;; uniq buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-ignore-buffers-re "^\\*")

;;keybindings
(global-set-key (kbd "C-M-h") 'backward-kill-word)
(global-set-key (kbd "C-c +") 'text-scale-increase)
(global-set-key (kbd "C-c -") 'text-scale-decrease)
(global-set-key (kbd "C-.") 'repeat)

;; electric modes
(electric-pair-mode -1)
(electric-indent-mode -1)
(electric-layout-mode -1)

;; Autocompletion/snippets
(global-set-key (kbd "M-/") 'hippie-expand)
