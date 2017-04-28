;; SRE

(use-package systemd :ensure t)

(use-package hcl-mode :ensure t)

(use-package terraform-mode
  :ensure t
  :init
  (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))

(use-package dockerfile-mode :ensure t)

(use-package ansible
  :ensure t
  :config
  (use-package ansible-doc
    :ensure t
    :init
    (add-hook 'yaml-mode-hook #'ansible-doc-mode)))

(use-package nginx-mode :ensure t)
