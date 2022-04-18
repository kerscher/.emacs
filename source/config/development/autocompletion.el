;;;; Autocompletion

(defun kerscher/autocompletion ()
  (interactive)

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

  (use-package yasnippet
    :init
    (yas-global-mode 1)))

(kerscher/autocompletion)
