;; SRE

(defun kerscher/lang/devops ()
  "Load various DevOps related languages, such as 'terraform-mode', 'hcl-mode', 'ansible' etc."
  (interactive)

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
    (add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)))
