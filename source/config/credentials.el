;; password store and related tools

(use-package helm-pass
  :ensure t
  :commands (helm-pass))

(use-package keychain-environment
  :ensure t
  :init
  (keychain-refresh-environment))
