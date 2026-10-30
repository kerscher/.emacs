;; SRE

(defun kerscher/lang/devops ()
  "Load various DevOps related languages, such as 'terraform-mode', 'hcl-mode', 'ansible' etc."
  (interactive)

  (use-package yaml-mode
    :bind (:map yaml-mode-map
				("<backspace>" . backward-delete-char-untabify)))

  (use-package terraform-mode
    :init
    (use-package terraform-doc))

  (use-package hcl-mode))
