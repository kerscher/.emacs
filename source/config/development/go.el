;; Golang

(defun kerscher/go-mode-hook ()
  (add-hook 'before-save-hook #'gofmt-before-save 0 t)
  (flymake-golangci-load))

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :init
	(use-package flymake-golangci)
    :config
	(setq gofmt-command "goimports")
	:hook
	(go-mode . kerscher/go-mode-hook))
  (use-package go-dlv))
