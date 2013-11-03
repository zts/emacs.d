;; Random bits that make everything work on OSX
(if (eq system-type 'darwin)
    (setq exec-path (cons "/Users/zts/bin"
                          (cons "/usr/local/bin" exec-path))))
