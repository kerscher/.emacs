;; Haskell

(defun kerscher/lang/haskell ()
  "Load haskell-mode' and related packages."
  (interactive)
  (use-package haskell-mode
    :bind (:map haskell-mode-map
                ("C-c C-c" . haskell-compile)
                :map haskell-cabal-mode-map
                ("C-c C-c" . haskell-compile))
    :init
    (speedbar-add-supported-extension ".hs")
    :config
    (eval-after-load "which-func"
      '(add-to-list 'which-func-modes 'haskell-mode))))
