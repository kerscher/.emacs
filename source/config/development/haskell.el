;; Haskell

(use-package haskell-mode
  :ensure t
  :bind (:map haskell-mode
         ("C-c C-c" . haskell-compile)
         :map haskell-cabal-mode
         ("C-c C-c" . haskell-compile))
  :init
  (setq haskell-compile-cabal-build-command "stack build")
  (speedbar-add-supported-extension ".hs")
  :config
  (use-package intero
    :ensure t
    :init
    (require 'intero)
    (add-hook 'haskell-mode-hook 'intero-mode))
  (eval-after-load "which-func"
  '(add-to-list 'which-func-modes 'haskell-mode)))
