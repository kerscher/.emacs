;;; Technical writing support

(defun kerscher/writing ()
  "Load writing packages."
  (interactive)
  (use-package markdown-ts-mode
    :straight nil
    :ensure nil
    :mode ("\\.\\(md\\|markdown\\)\\'" . markdown-ts-mode)
    :init
    (use-package markdown-preview-mode :ensure t)))
