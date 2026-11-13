;; SRE -*- lexical-binding: t; -*-

(defun kerscher/lang/devops ()
  "Load various DevOps related languages, such as 'terraform-mode', 'hcl-mode', 'ansible' etc."
  (interactive)

  (use-package yaml-ts-mode
    :straight nil
    :ensure nil
    :mode ("\\.ya?ml\\'" . yaml-ts-mode)
    :bind (:map yaml-ts-mode-map
				("<backspace>" . backward-delete-char-untabify)))

  (use-package terraform-mode
    :init
    (use-package terraform-doc))

  (use-package hcl-mode))
