;; Golang

;; (defun kerscher/lsp-go-install-save-hooks ()
;;   (add-hook 'before-save-hook #'lsp-format-buffer t t)
;;   (add-hook 'before-save-hook #'lsp-organize-imports t t))
;; (add-hook 'go-mode-hook #'kerscher/lsp-go-install-save-hooks)

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :ensure t
    :config
    (setq gofmt-command "goimports")
    (use-package flymake-golangci
      :config
      (add-hook 'go-mode-hook 'flymake-golangci-load))
    (add-hook 'before-save-hook #'gofmt-before-save)
    ;; (use-package flycheck-golangci-lint
    ;;   :ensure t
    ;;   :hook (go-mode . flycheck-golangci-lint-setup))
    ;; (use-package go-errcheck :ensure t)
    ;; (use-package go-eldoc
    ;;   :ensure t
    ;;   :init
    ;;   (add-hook 'go-mode-hook 'go-eldoc-setup))
    )
  )
