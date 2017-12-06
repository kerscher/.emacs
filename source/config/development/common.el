;; Common IDE features

;; Soft tabs.
(setq-default indent-tabs-mode nil)

;; Match brackets
(show-paren-mode 1)
(electric-pair-mode 1)

;; Version control
(use-package magit :ensure t)

;; Auto-completion
(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-tooltip-align-annotations t)
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
