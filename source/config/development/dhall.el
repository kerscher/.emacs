;; Dhall

(defun kerscher/lang/dhall ()
  "Load 'dhall-mode' with associated LSP packages"
  (interactive)
  (use-package dhall-mode
    :ensure t
    :config
    (setq dhall-use-header-line nil)))
