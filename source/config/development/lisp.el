;; Lisp

(defun kerscher/lang/lisp ()
  (interactive)

  (use-package sexp-move)
  
  (use-package paredit
	:config
	:bind (:map paredit-mode-map
                ("<RET>" . paredit-newline)
				("<right>" . sexp-move-forward)
				("<left>" . sexp-move-backward)
				("M-<left>" . backward-char)
				("M-<right>" . forward-char)
				("C-k" . sr-speedbar-toggle)))  
  
  (mapc (lambda (p) (eval `(use-package ,p)))
		(mapcar (lambda (i) (intern (concat "geiser-" i)))
				'("guile"))))
