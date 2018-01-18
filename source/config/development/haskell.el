;; Haskell

(use-package haskell-mode
  :ensure t
  :bind (:map haskell-mode-map
         ("C-c C-c" . haskell-compile)
         :map haskell-cabal-mode-map
         ("C-c C-c" . haskell-compile))
  :init
  (setq haskell-compile-cabal-build-command "stack build")
  (speedbar-add-supported-extension ".hs")
  :config
  (use-package hasky-stack :ensure t)
  (use-package intero
    :ensure t
    :init
    (require 'intero)
    (add-hook 'haskell-mode-hook 'intero-mode)
    :config
    (defun kerscher/hpack-intero-restart ()
      (interactive)
      (shell-command
       (format (concat "hpack " (intero-project-root))))
      (intero-restart)))
  (eval-after-load "which-func"
  '(add-to-list 'which-func-modes 'haskell-mode)))
