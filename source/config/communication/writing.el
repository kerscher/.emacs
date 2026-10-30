;;; Technical writing support

(defun kerscher/writing ()
  "Load writing packages."
  (interactive)
  (use-package markdown-mode
    :ensure t
    :init
    (use-package markdown-mode+ :ensure t)
    (add-hook 'markdown-mode-hook #'kerscher/markdown/inhibit-format-for-changelogs)
    (use-package markdown-preview-mode :ensure t)))

(defun kerscher/markdown/inhibit-format-for-changelogs ()
  "Disable apheleia formatting in CHANGELOG files."
  (when (and buffer-file-name
             (string= (file-name-nondirectory buffer-file-name) "CHANGELOG.md"))
    (setq-local apheleia-inhibit t)))
