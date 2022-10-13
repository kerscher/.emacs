;; SRE

(defun kerscher/lang/devops ()
  "Load various DevOps related languages, such as 'terraform-mode', 'hcl-mode', 'ansible' etc."
  (interactive)

  (use-package yaml-mode
    :bind (:map yaml-mode-map
				("<backspace>" . backward-delete-char-untabify)))

  (use-package hcl-mode
	:hook
    (hcl-mode-hook . (lambda ()
					   (save-mark-and-excursion
						 (terraform-format-buffer)))))

  (use-package terraform-mode
    :init
    (use-package terraform-doc)
	:hook
    (terraform-mode . terraform-format-on-save-mode)))
