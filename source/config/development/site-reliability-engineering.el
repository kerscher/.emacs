;; SRE

(use-package systemd :ensure t)

(use-package hcl-mode :ensure t)

(use-package terraform-mode
  :ensure t
  :init
  (use-package company-terraform
    :ensure t
    :init
    (company-terraform-init))
  (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))

(use-package dockerfile-mode :ensure t)

(use-package ansible
  :ensure t
  :config
  (use-package ansible-doc
    :ensure t
    :init
    (add-hook 'yaml-mode-hook #'ansible-doc-mode))
  (use-package company-ansible
    :ensure t
    :init
    (add-to-list 'company-backends 'company-ansible)))

(use-package salt-mode :ensure t)

(use-package nginx-mode :ensure t)

(use-package vagrant :ensure t)
(use-package vagrant-tramp :ensure t)
