;;;; Common IDE features

;; Soft tabs.
(setq-default indent-tabs-mode nil)

;; Match brackets
(show-paren-mode 1)
(electric-pair-mode 1)

;; Version control
(use-package magit
  :bind (:map global-map ("C-." . magit-status))
  :config
  (use-package magit-lfs)
  :hook (magit-mode . turn-on-font-lock))

(use-package git-timemachine)

(use-package git-link)

;; direnv support
(use-package direnv
 :config
 (direnv-mode))

;; Auto-completion
(use-package company
  :init
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.1)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-limit 30)
  (use-package pos-tip :ensure t)
  (use-package company-quickhelp
    :ensure t
    :init
    (company-quickhelp-mode 1))
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-box
  :hook (company-mode . company-box-mode))

;; Snippets
(use-package yasnippet
  :init
  (yas-global-mode 1))
