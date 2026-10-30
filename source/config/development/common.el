;;;; Common IDE features -*- lexical-binding: t; -*-

(defun kerscher/development/common ()
  (interactive)

  (use-package direnv
	:config
	(direnv-mode))

  (use-package aggressive-indent
	:hook ((emacs-lisp-mode lisp-mode scheme-mode) . aggressive-indent-mode)))

(kerscher/development/common)
