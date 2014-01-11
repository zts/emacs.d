;; Editing tweaks

(setq-default indent-tabs-mode nil)
'(tab-width 4)

(delete-selection-mode t)
(show-paren-mode t)

;; spell-checking
(setq-default ispell-program-name "aspell")
(add-hook 'text-mode-hook 'flyspell-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; programming hooks
;; (add-hook 'prog-mode-hook 'linum-mode)
;; (setq linum-format "%4d ")
(add-to-list 'auto-mode-alist '("\\.zsh$" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))

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


;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
;; from http://snarfed.org/gnu_emacs_backup_files
(setq auto-save-file-name-transforms
      '((".*" "~/.emacs.d/autosaves/\\1" t)))
(setq backup-directory-alist
      '((".*" . "~/.emacs.d/backups/")))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)


;; Replace smart quotes in a region
;; from http://superuser.com/questions/603421/how-to-remove-smart-quotes-in-copy-paste
(defun replace-smart-quotes (beg end)
  "Replace 'smart quotes' in buffer or region with ascii quotes."
  (interactive "r")
  (format-replace-strings '(("\x201C" . "\"")
                            ("\x201D" . "\"")
                            ("\x2018" . "'")
                            ("\x2019" . "'"))
                          nil beg end))

;; Enable dired-extras
(add-hook 'dired-load-hook
          (function (lambda () (load "dired-x"))))
