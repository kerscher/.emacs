;; Language server protocol (LSP)

(defun kerscher/eglot-ensure ()
  (interactive)
  (progn
    (eglot-ensure)
    (flymake-mode 1)))

;; (defmacro kerscher/eglotise (mode-name)
;;   `(,mode-name . kerscher/eglot-ensure))

(use-package eglot
  :ensure t
  :config
  (use-package consult-eglot)
  (add-to-list 'eglot-server-programs '(terraform-mode . ("terraform-ls" "serve")))
  :bind (:map eglot-mode-map
              ("C-c r" . eglot-rename)
              ("C-c o" . eglot-code-action-organize-imports)
              ("C-c h" . eldoc)
              ("<f6>" . xref-find-definitions))
  :hook
  ;; TODO: Fix kerscher/eglotise and use it here with mapc instead
  ((dockerfile-mode . kerscher/eglot-ensure)
   (go-mode . kerscher/eglot-ensure)
   (nix-mode . kerscher/eglot-ensure)
   (python-mode . kerscher/eglot-ensure)
   (rust-mode . kerscher/eglot-ensure)
   (shell-script-mode . kerscher/eglot-ensure)
   (terraform-mode . kerscher/eglot-ensure))
  ;; (mapc kerscher/eglotise (dockerfile-mode
  ;;                                go-mode
  ;;                                nix-mode
  ;;                                python-mode
  ;;                                rust-mode
  ;;                                shell-script-mode
  ;;                                terraform-mode))
  )
