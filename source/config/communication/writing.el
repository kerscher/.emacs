;;; Technical writing support -*- lexical-binding: t; -*-

(defun kerscher/writing ()
  "Load writing packages."
  (interactive)
  (use-package markdown-ts-mode
    :straight nil
    :ensure nil
    :mode ("\\.\\(md\\|markdown\\)\\'" . markdown-ts-mode)
    :init
    (add-hook 'markdown-ts-mode-hook #'kerscher/markdown/inhibit-format-for-changelogs)
    (use-package markdown-preview-mode :ensure t)))

(defun kerscher/markdown/inhibit-format-for-changelogs ()
  "Disable apheleia formatting in CHANGELOG files."
  (when (and buffer-file-name
             (string= (file-name-nondirectory buffer-file-name) "CHANGELOG.md"))
    (setq-local apheleia-inhibit t)))
