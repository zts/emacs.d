(defun pretty-functions ()
  (font-lock-add-keywords
   nil `(("\\(function *\\)("
          (0 (progn (compose-region (match-beginning 1)
                                    (match-end 1) "ƒ")
                    nil))))))
(add-hook 'js-mode-hook 'pretty-functions)
