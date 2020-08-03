;; Haskell

(defun kerscher/lang/haskell ()
  "Load 1haskell-mode' and related packages."
  (interactive)
  (use-package haskell-mode
    :ensure t
    :bind (:map haskell-mode-map
                ("C-c C-c" . haskell-compile)
                :map haskell-cabal-mode-map
                ("C-c C-c" . haskell-compile))
    :init
    (use-package lsp-haskell
      :ensure t
      :init
      (add-hook 'haskell-mode-hook #'lsp))
    (setq haskell-compile-cabal-build-command "stack build")
    (speedbar-add-supported-extension ".hs")
    :config
    (eval-after-load "which-func"
      '(add-to-list 'which-func-modes 'haskell-mode))))
