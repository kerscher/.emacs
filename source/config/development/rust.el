;; Rust

(defun kerscher/lang/rust ()
  "Load various 'rust-mode' related packages."
  (interactive)
  (use-package toml-mode :ensure t)
  (use-package rust-mode
    :ensure t
    :init
    (use-package cargo :ensure t)
    (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
    (add-hook 'rust-mode-hook 'cargo-minor-mode)
    (add-hook 'toml-mode-hook 'cargo-minor-mode)
    :config
    (setq rust-format-on-save t)
    ;; (use-package racer
    ;;   :ensure t
    ;;   :init
    ;;   (add-hook 'rust-mode-hook  #'racer-mode)
    ;;   (add-hook 'racer-mode-hook #'eldoc-mode)
    ;;   (add-hook 'racer-mode-hook #'company-mode))
    ;; (use-package flycheck-rust
    ;;   :ensure t
    ;;   :init
    ;;   (add-hook 'rust-mode-hook
    ;;             '(lambda ()
    ;;                (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
    ;;                (local-set-key (kbd "TAB") #'company-indent-or-complete-common))))
    ))
