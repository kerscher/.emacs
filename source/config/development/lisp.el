;; Lisp

(setq-default kerscher/rainbow-blocks-toggle 0)

(defun kerscher/toggle-rainbow-blocks ()
  (interactive)

  (setq-local kerscher/rainbow-blocks-toggle
			  (if (eq kerscher/rainbow-blocks-toggle 0) 1 0))
  (font-lock-mode kerscher/rainbow-blocks-toggle)
  (rainbow-blocks-mode kerscher/rainbow-blocks-toggle))

(defun kerscher/lang/lisp ()
  (interactive)

  (use-package sexp-move)

  (use-package rainbow-blocks)
  
  (use-package paredit
	:config
	(mapc (lambda (p) (eval `(straight-use-package (quote ,p))))
		  (mapcar (lambda (i) (intern (concat "geiser-" i)))
				  '("guile")))
	:bind (:map paredit-mode-map
                ("<RET>" . paredit-newline)
				("<right>" . sexp-move-forward)
				("<left>" . sexp-move-backward)
				("M-<left>" . backward-char)
				("M-<right>" . forward-char)
				("C-k" . sr-speedbar-toggle)
				("C-c l" . kerscher/toggle-rainbow-blocks))
	:hook
	(emacs-lisp-mode . enable-paredit-mode)
	(lisp-mode . enable-paredit-mode)
	(geiser-mode . enable-paredit-mode)))
