;; Language server protocol (LSP) -*- lexical-binding: t; -*-

(defun kerscher/eglot-ensure ()
  (interactive)
  (eglot-ensure)
  (flymake-mode 1))

(use-package eglot
  :straight nil
  :ensure nil
  :init
  (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))
  :config
  (use-package consult-eglot)
  (add-to-list 'eglot-server-programs '(c-mode . ("clangd")))
  (add-to-list 'eglot-server-programs '(c-ts-mode . ("clangd")))
  (add-to-list 'eglot-server-programs '(terraform-mode . ("terraform-ls" "serve")))
  :bind (:map eglot-mode-map
              ("C-c r" . eglot-rename)
              ("C-c o" . eglot-code-action-organize-imports)
              ("C-c h" . eldoc)
              ("<f6>" . xref-find-definitions))
  :hook
  ((c-mode . kerscher/eglot-ensure)
   (c-ts-mode . kerscher/eglot-ensure)
   (dockerfile-mode . kerscher/eglot-ensure)
   (go-ts-mode . kerscher/eglot-ensure)
   (nix-mode . kerscher/eglot-ensure)
   (python-mode . kerscher/eglot-ensure)
   (rust-ts-mode . kerscher/eglot-ensure)
   (sh-mode . kerscher/eglot-ensure)
   (terraform-mode . kerscher/eglot-ensure)))
