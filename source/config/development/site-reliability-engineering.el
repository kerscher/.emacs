;; SRE

(defun kerscher/lang/devops ()
  "Load various DevOps related languages, such as 'terraform-mode', 'hcl-mode', 'ansible' etc."
  (interactive)

  (use-package systemd :ensure t)

  (use-package hcl-mode :ensure t)

  (use-package terraform-mode
    :ensure t
    :init
    (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
    (use-package company-terraform
      :ensure t
      :init
      (company-terraform-init)))
  
  (use-package dockerfile-mode :ensure t)

  (use-package flycheck-yamllint
    :ensure t
    :defer t
    :init
    (progn
      (eval-after-load 'flycheck
        '(add-hook 'flycheck-mode-hook 'flycheck-yamllint-setup))))
  
  (add-hook 'js-mode-hook
            #'(lambda ()
              (add-hook
               'before-save-hook
               #'(lambda ()
                   (save-mark-and-excursion
                     (json-pretty-print-buffer-ordered))))))

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
      (add-to-list 'company-backends 'company-ansible))
    (use-package ansible-vault
      :ensure t
      :init
      (add-hook 'yaml-mode-hook 'ansible-vault-mode-maybe)))

  (use-package nginx-mode :ensure t)

  (use-package vagrant :ensure t)
  (use-package vagrant-tramp :ensure t))
