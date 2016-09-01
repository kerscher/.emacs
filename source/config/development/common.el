;; Common IDE features

;; Soft tabs.
(setq-default indent-tabs-mode nil)

;; Version control
(require 'magit)

;; Auto-completion
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-tooltip-align-annotations t)

;; Syntax checking
(require 'flycheck)
