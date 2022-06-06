;; SRE

(defun kerscher/lang/devops ()
  "Load various DevOps related languages, such as 'terraform-mode', 'hcl-mode', 'ansible' etc."
  (interactive)

  (use-package systemd :ensure t)
  (use-package dockerfile-mode :ensure t)
  (use-package jq-mode :ensure t)

  (use-package yaml-mode
    :ensure t
    :bind (:map yaml-mode-map
                ("<backspace>" . backward-delete-char-untabify)))

  (use-package hcl-mode
    :ensure t
    :init
    (add-hook 'hcl-mode-hook #'(lambda ()
                                 (save-mark-and-excursion
                                   (terraform-format-buffer)))))

  (use-package terraform-mode
    :ensure t
    :init
    (use-package terraform-doc)
    (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode))

  (use-package ansible
    :ensure t
    :config
    (use-package ansible-doc
      :ensure t
      :init
      (add-hook 'yaml-mode-hook #'ansible-doc-mode))
    (use-package ansible-vault
      :ensure t
      :init
      (add-hook 'yaml-mode-hook 'ansible-vault-mode-maybe))))
