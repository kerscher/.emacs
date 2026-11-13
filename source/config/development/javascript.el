;; Javascript -*- lexical-binding: t; -*-

(defun kerscher/lang/javascript ()
  "Load 'jq-mode'"
  (interactive)

  (use-package typescript-ts-mode
    :straight nil
    :ensure nil
    :mode (("\\.ts\\'" . typescript-ts-mode)
           ("\\.tsx\\'" . tsx-ts-mode)))

  (use-package flymake-eslint
	:hook ((typescript-ts-mode . flymake-eslint-enable)
           (tsx-ts-mode . flymake-eslint-enable)))
  
  (use-package jq-mode))
