;; Golang -*- lexical-binding: t; -*-

(defun kerscher/go-mode-hook ()
  (flymake-golangci-load))

(defun kerscher/lang/go ()
  "Load Go tree-sitter mode and related packages."
  (interactive)
  (use-package go-ts-mode
    :straight nil
    :ensure nil
    :mode ("\\.go\\'" . go-ts-mode)
    :init
	(use-package flymake-golangci)
    :hook
	(go-ts-mode . kerscher/go-mode-hook)))
