;; Golang

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :ensure t
    :init
    (setenv "GO111MODULE" "on")
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
    (use-package flycheck-golangci-lint
      :ensure t
      :hook (go-mode . flycheck-golangci-lint-setup))
    (use-package company-go :ensure t)
    (use-package go-errcheck :ensure t)
    (use-package go-eldoc
      :ensure t
      :init
      (add-hook 'go-mode-hook 'go-eldoc-setup))))
