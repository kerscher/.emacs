;; Golang

(use-package go-mode
  :ensure t
  :config
  (use-package company-go :ensure t)
  (use-package go-errcheck :ensure t)
  (use-package go-eldoc
    :ensure t
    :init
    (add-hook 'go-mode-hook 'go-eldoc-setup)))
