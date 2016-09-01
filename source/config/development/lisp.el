;; Emacs lisp

;; Always debug errors
(customize-set-variable 'debug-on-error t)

;; Structured editing
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
