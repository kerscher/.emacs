;; Language server protocol (LSP)

(defun kerscher/eglot-ensure ()
  (interactive)
  (eglot-ensure)
  (flymake-mode 1))

(defun kerscher/eglot-ensure-with-format ()
  (kerscher/eglot-ensure)
  (add-hook 'before-save-hook #'eglot-format-buffer 0 t))

(use-package eglot
  :config
  (use-package consult-eglot)
  (add-to-list 'eglot-server-programs '(terraform-mode . ("terraform-ls" "serve")))
  :bind (:map eglot-mode-map
              ("C-c r" . eglot-rename)
              ("C-c o" . eglot-code-action-organize-imports)
              ("C-c h" . eldoc)
              ("<f6>" . xref-find-definitions))
  :hook
  ((dockerfile-mode . kerscher/eglot-ensure)
   (go-mode . kerscher/eglot-ensure)
   (nix-mode . kerscher/eglot-ensure-with-format)
   (python-mode . kerscher/eglot-ensure)
   (rust-mode . kerscher/eglot-ensure)
   (shell-script-mode . kerscher/eglot-ensure)
   (terraform-mode . kerscher/eglot-ensure)))
