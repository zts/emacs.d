;; Random bits that make everything work on OSX
(if (eq system-type 'darwin)
    (setq exec-path (cons "/Users/zts/bin"
                          (cons "/usr/local/bin" exec-path)))
    (setq eshell-path-env (concat "/Users/zts/bin:/usr/local/bin" ":" eshell-path-env))
    (let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
      (setenv "PATH" path))
  )
