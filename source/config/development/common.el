;;;; Common IDE features

(defun kerscher/development/common ()
  (interactive)
  (use-package exec-path-from-shell
	:init
	(exec-path-from-shell-initialize))

  (use-package direnv
	:config
	(direnv-mode))

  (use-package aggressive-indent
	:config
	(global-aggressive-indent-mode 1)))

(kerscher/development/common)
