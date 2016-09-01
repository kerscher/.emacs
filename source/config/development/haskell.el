;; Haskell

(require 'haskell-mode)

(require 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;; Speedbar support
(speedbar-add-supported-extension ".hs")

(eval-after-load "which-func"
  '(add-to-list 'which-func-modes 'haskell-mode))

;; Compile with "C-c C-c"
(eval-after-load "haskell-mode"
  '(define-key haskell-mode-map (kbd "C-c C-c") 'haskell-compile))
(eval-after-load "haskell-cabal"
  '(define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-compile))
(setq haskell-compile-cabal-build-command "stack build")
