;; Golang

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :init
	(use-package flymake-golangci)
    :config
	(setq gofmt-command "goimports")
	:hook
	(go-mode . flymake-golangci-load)
	(before-save . gofmt-before-save))
  (use-package go-dlv))
