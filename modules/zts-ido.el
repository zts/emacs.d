;; ido mode settings
(require 'ido)
(ido-mode t)
(ido-ubiquitous t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
;;      confirm-nonexistent-file-or-buffer nil
;;      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ffap-machine-p-known 'reject
;;      ido-use-virtual-buffers t
;;      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)

;; from http://emacs-fu.blogspot.co.uk/2010/02/dealing-with-many-buffers-ibuffer.html
(require 'ibuffer)
(setq ibuffer-saved-filter-groups
  (quote (("default"
            ("Org" ;; all org-related buffers
              (mode . org-mode))
            ("Mail"
              (or  ;; mail-related buffers
               (mode . message-mode)
               (mode . mail-mode)
               ;; etc.; all your mail related modes
               ))
            ("Elastera"
              (filename . "code/elastera/"))
            ("Adzuna"
              (filename . "code/adzuna/"))
            ("Code" ;; prog stuff not already in MyProjectX
              (or
                (mode . c-mode)
                (mode . perl-mode)
                (mode . python-mode)
                (mode . emacs-lisp-mode)
                ;; etc
                ))
            ("ERC"   (mode . erc-mode))))))

(add-hook 'ibuffer-mode-hook
  (lambda ()
    (ibuffer-switch-to-saved-filter-groups "default")))
(global-set-key (kbd "C-x C-b") 'ibuffer)
