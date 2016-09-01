;; Rust

;; IDE support binary
(setq racer-cmd "/home/yghor/.cargo/bin/racer")
(setq racer-rust-src-path "/home/yghor/development/remote/rust/src/")

;; Hooks
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook  #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'rust-mode-hook
          '(lambda ()
             (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)))
