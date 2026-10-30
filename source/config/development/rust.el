;; Rust

(defun kerscher/lang/rust ()
  "Load various 'rust-mode' related packages."
  (interactive)
  (use-package toml-mode)
  (use-package rust-mode
    :init
    (use-package cargo)
    (add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
	:hook	
    (rust-mode . cargo-minor-mode)
    (toml-mode . cargo-minor-mode)))
