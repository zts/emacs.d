;; Stuff for working with Javascript

;; Mode-specific key bindings
(eval-after-load 'javascript-mode
  '(progn
     (define-key js-mode-map (kbd "RET") 'reindent-then-newline-and-indent)))
;;(define-key 'js-mode-map (kbd "RET") 'reindent-then-newline-and-indent)

;; Display tweaks
(defun pretty-functions ()
  (font-lock-add-keywords
   nil `(("\\(function *\\).*("
          (0 (progn (compose-region (match-beginning 1)
                                    (match-end 1) "ƒ")
                    nil))))))
(add-hook 'js-mode-hook 'pretty-functions)

;; jshint
;; using https://github.com/koansys/jshint-v8
(require 'flymake-jshint)
(add-hook 'js-mode-hook (lambda () (flymake-mode 1)))

;; inferior js
(require 'js-comint)
(setq inferior-js-program-command "node")
(setq inferior-js-mode-hook
      (lambda ()
        (ansi-color-for-comint-mode-on)
        (add-to-list 'comint-preoutput-filter-functions
                     (lambda (output)
                       (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
                                                 (replace-regexp-in-string ".*1G.*3G" ">" output))))))
