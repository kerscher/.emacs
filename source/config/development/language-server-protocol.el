;; Language server protocol (LSP)

;; Language server protocol
(defmacro kerscher/lsp-defer-mode (mode-name)
  (list mode-name 'lsp-deferred))

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :init (setq lsp-keymap-prefix "C-c l")
  (if (fboundp 'kerscher/lang/devops)
      (progn
        (require 'lsp-mode)
        (lsp-register-client (make-lsp-client :new-connection
                                            (lsp-stdio-connection
                                             `(,(executable-find "terraform-ls")
                                               "serve"))
                                            :major-modes
                                            '(terraform-mode)
                                            :server-id
                                            'terraform-ls))))
  :hook (mapc kerscher/lsp-defer-mode (dockerfile-mode
                                       dhall-mode
                                       terraform-mode)))

;; Debug adapter protocol
(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :hook ((lsp-mode-hook . lsp-ui-mode)))

(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(setq lsp-ui-doc-enable t
      lsp-ui-peek-enable t
      lsp-ui-sideline-enable t
      lsp-ui-flycheck-enable t
      lsp-ui-imenu-enable t)
