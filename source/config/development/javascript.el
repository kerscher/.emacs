;; Javascript

(defun kerscher/lang/javascript ()
  "Load 'jq-mode'"
  (interactive)

  (use-package typescript-mode)

  (use-package flymake-eslint
	:hook (typescript-mode . flymake-eslint-enable))
  
  (use-package jq-mode
	:config
	:hook (javascript-mode
		   . (lambda ()
			   (add-hook
				'before-save-hook
				(lambda ()
				  (save-mark-and-excursion
					(json-pretty-print-buffer))) nil t)))))
