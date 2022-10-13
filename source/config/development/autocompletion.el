;;;; Autocompletion

(defun kerscher/autocompletion ()
  (interactive)
  (use-package corfu
	:custom
	(corfu-cycle t)
	(corfu-auto t)
	(corfu-auto-delay 0)
	(corfu-auto-prefix 0)
	:init
	(global-corfu-mode))

  (use-package corfu-doc
	:hook
	(corfu-mode . corfu-doc-mode)
	:bind (:map corfu-map
				("M-<up>" . corfu-doc-scroll-down)
				("M-<down>" . corfu-doc-scroll-up)
				("M-d" . corfu-doc-toggle)))

  (use-package cape
	:init
	(mapc (lambda (f) (add-to-list 'completion-at-point-functions f))
		  '(cape-file cape-keyword))))

(kerscher/autocompletion)
