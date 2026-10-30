;;;; Debugging (DAP) -*- lexical-binding: t; -*-

(defun kerscher/debug ()
  "Load 'dape', a DAP client that does not depend on LSP."
  (interactive)

  (use-package dape
    :custom
    (dape-buffer-window-arrangement 'right)
    :config
    (dape-breakpoint-global-mode)))
