;; password store and related tools

(use-package helm-pass
  :ensure t
  :commands (helm-pass))

(cond
 ((not (string-collate-equalp system-type "darwin"))
  (use-package keychain-environment
    :ensure t
    :init
    (keychain-refresh-environment)))
 (t (let*
    ((ssh-socket-env-var-name "SSH_AUTH_SOCK")
     (ssh-socket-env-var-value
      (replace-regexp-in-string
       "\n"
       ""
       (shell-command-to-string
        (concat "launchctl getenv " ssh-socket-env-var-name)))))
  (setenv ssh-socket-env-var-name ssh-socket-env-var-value))))
