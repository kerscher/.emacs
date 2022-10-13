(defun kerscher/lang/docker ()
  "Load Dockerfile-related packages"
  (interactive)

  (use-package docker
	:bind ("C-c d" . docker)))
