;; Golang

(defun kerscher/go-mode-hook ()
  (add-hook 'before-save-hook #'kerscher/go-format-buffer 0 t)
  (flymake-golangci-load))

(defun kerscher/go-format-buffer ()
  "Format the current buffer with goimports."
  (kerscher/format-buffer-with-command "goimports"))

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
	(go-ts-mode . kerscher/go-mode-hook))
  (use-package go-dlv))
