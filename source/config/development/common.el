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
