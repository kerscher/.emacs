;; Common IDE features

;; Soft tabs.
(setq-default indent-tabs-mode nil)

;; Match brackets
(show-paren-mode 1)
(electric-pair-mode 1)

;; Version control
(use-package magit
  :ensure t
  :bind (:map global-map ("C-." . magit-status)))

;; Projects support
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1))

;; Auto-completion
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-limit 30)
  (use-package company-quickhelp
    :ensure t
    :init
    (company-quickhelp-mode 1)))

;; Syntax checking
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Snippets
(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

;; Language server protocol
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook
  ;; TODO: make this into a macro and mapc it
  (dockerfile-mode . lsp-deferred)
  (javascript-mode . lsp-deferred)
  (yaml-mode . lsp-deferred))

;; Debug adapter protocol
(use-package dap-mode
  :ensure t
  :after lsp-mode
  :config
  (dap-mode t)
  (dap-ui-mode t))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(setq lsp-ui-doc-enable t
      lsp-ui-peek-enable t
      lsp-ui-sideline-enable t
      lsp-ui-flycheck-enable t
      lsp-ui-imenu-enable t)
