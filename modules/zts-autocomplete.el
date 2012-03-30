;; Start with the default configuration
(require 'auto-complete-config)

;; Add extra dictionaries
(add-to-list 'ac-dictionary-directories (concat emacs-dir "auto-complete/dict"))

;; Use dictionaries by default
(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
(global-auto-complete-mode t)

;; Start auto-completion after 2 characters of a word
(setq ac-auto-start 2)

;; Be case-sensitive
(setq ac-ignore-case nil)
