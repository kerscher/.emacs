;; Dhall

(defun kerscher/lang/dhall ()
  "Load 'dhall-mode'"
  (interactive)
  (use-package dhall-mode
    :config
    (setq dhall-use-header-line nil)))
