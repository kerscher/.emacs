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
      ;(add-hook 'markdown-mode-hook #'markdownfmt-enable-on-save))
      )
    (use-package markdown-preview-mode :ensure t)
    (use-package flycheck-mmark
      :ensure t
      :init
      (add-hook 'flycheck-mode-hook #'flycheck-mmark-setup)
      (add-hook 'markdown-mode-hook #'flycheck-mode))))
