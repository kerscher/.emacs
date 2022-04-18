;;;; Common IDE features

(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

(use-package direnv
 :config
 (direnv-mode))
