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
  (setq company-tooltip-align-annotations t))

;; Syntax checking
(use-package flycheck
             :ensure t
             :init (global-flycheck-mode))
