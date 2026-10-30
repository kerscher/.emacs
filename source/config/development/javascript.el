;; Javascript -*- lexical-binding: t; -*-

(defun kerscher/lang/javascript ()
  "Load 'jq-mode'"
  (interactive)

  (use-package typescript-mode)

  (use-package flymake-eslint
	:hook (typescript-mode . flymake-eslint-enable))
  
  (use-package jq-mode))
