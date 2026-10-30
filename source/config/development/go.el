;; Golang

(defun kerscher/go-mode-hook ()
  (flymake-golangci-load))

(defun kerscher/lang/go ()
  "Load 'go-mode' and related packages."
  (interactive)
  (use-package go-mode
    :init
	(use-package flymake-golangci)
    :hook
	(go-mode . kerscher/go-mode-hook)))
