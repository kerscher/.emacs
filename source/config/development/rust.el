;; Rust -*- lexical-binding: t; -*-

(defun kerscher/lang/rust ()
  "Load Rust and TOML tree-sitter modes and related packages."
  (interactive)
  (use-package toml-ts-mode
    :straight nil
    :ensure nil
    :mode ("\\.toml\\'" . toml-ts-mode))
  (use-package rust-ts-mode
    :straight nil
    :ensure nil
    :mode ("\\.rs\\'" . rust-ts-mode))
  (use-package cargo
    :hook ((rust-ts-mode . cargo-minor-mode)
           (toml-ts-mode . cargo-minor-mode))))
