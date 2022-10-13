;;; Technical writing support

(defun kerscher/writing ()
  "Load writing packages."
  (interactive)
  (use-package markdown-mode
    :ensure t
    :init
    (use-package markdown-mode+ :ensure t)
    (use-package markdownfmt
      :ensure t
      :init
      (add-hook 'markdown-mode-hook #'kerscher/markdown/markdownfmt-enable-on-save-except-changelogs)
      )
    (use-package markdown-preview-mode :ensure t)))

(defun kerscher/markdown/markdownfmt-enable-on-save-except-changelogs ()
  "Run markdown when saving buffer, except if it's a CHANGELOG file"
  (interactive)
  (add-hook 'before-save-hook
            (lambda ()
              (when (not (string= (file-name-nondirectory (buffer-file-name)) "CHANGELOG.md"))
                (markdownfmt-format-buffer)))
            nil t))
