;;;; Common IDE features

(defun kerscher/development/common ()
  (interactive)
  (use-package exec-path-from-shell
	:ensure t
	:init
	(exec-path-from-shell-initialize))

  (use-package direnv
	:config
	(direnv-mode)))

(kerscher/development/common)
