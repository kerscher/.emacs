;; Emacs lisp

;; Always debug errors
;(customize-set-variable 'debug-on-error t)

(defun kerscher/lang/lisp ()
  "Load Lisp-related modes and features"
  (interactive)
  (use-package geiser :ensure t))
