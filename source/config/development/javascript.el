;; Javascript

(defun kerscher/lang/javascript ()
  "Load 'jq-mode'"
  (interactive)

  (use-package jq-mode
	:hook
	(before-save . (lambda ()
					 (save-mark-and-excursion
					   (json-pretty-print-buffer-ordered))))))
