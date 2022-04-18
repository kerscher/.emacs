;; Golang

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :ensure t
    :config
    (setq gofmt-command "goimports")
    (use-package flymake-golangci
      :config
      (add-hook 'go-mode-hook 'flymake-golangci-load))
    (add-hook 'before-save-hook #'gofmt-before-save)))
