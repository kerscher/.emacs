;; Golang

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :ensure t
    :config
    (setq gofmt-command "goimports")
    (add-hook 'before-save-hook #'gofmt-before-save)
    (use-package flycheck-golangci-lint
      :ensure t
      :hook (go-mode . flycheck-golangci-lint-setup))
    (use-package company-go :ensure t)
    (use-package go-errcheck :ensure t)
    (use-package go-eldoc
      :ensure t
      :init
      (add-hook 'go-mode-hook 'go-eldoc-setup))))
