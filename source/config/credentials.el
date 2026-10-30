;; password store and related tools -*- lexical-binding: t; -*-

(if (eq system-type 'darwin)
    (let ((socket (string-trim
                   (or (ignore-errors
                         (car (process-lines "launchctl" "getenv" "SSH_AUTH_SOCK")))
                       ""))))
      (unless (string-empty-p socket)
        (setenv "SSH_AUTH_SOCK" socket)))
  (use-package keychain-environment
    :init
    (keychain-refresh-environment)))
