;; Golang

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :ensure t
    :init
    (setenv "GOPATH"     (concat (getenv "HOME") "/go"))
    (setenv "GOENV_ROOT" (concat (getenv "HOME") "/.goenv"))
    (setenv "GOENV_PATH" (concat (getenv "GOENV_ROOT") "/bin"))
    (setenv "PATH"       (concat
                          (getenv "GOENV_ROOT") "/shims:"
                          (getenv "GOENV_PATH") ":"
                          (getenv "PATH")))
    (setenv "GOROOT"
            (replace-regexp-in-string
             "\n"
             ""
             (shell-command-to-string "goenv prefix")))
    :config
    (add-hook 'before-save-hook #'gofmt-before-save)
    (use-package flycheck-gometalinter
      :ensure t
      :config
      (flycheck-gometalinter-setup)
      (setq flycheck-gometalinter-concurrency 4)
      (setq flycheck-gometalinter-fast t)
      (setq flycheck-gometalinter-vendor t)
      (setq flycheck-gometalinter-disable-linters '("gotype")))
    (use-package company-go :ensure t)
    (use-package go-errcheck :ensure t)
    (use-package go-eldoc
      :ensure t
      :init
      (add-hook 'go-mode-hook 'go-eldoc-setup))))
