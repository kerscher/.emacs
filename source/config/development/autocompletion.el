;;;; Autocompletion

(defun kerscher/autocompletion ()
  (interactive)
  (use-package corfu
	:straight (corfu :files (:defaults "extensions/*")
					 :includes (corfu-history))
	:custom
	(corfu-cycle t)
	(corfu-auto t)
	(corfu-quit-no-match 'separator)
	(corfu-auto-delay 0)
	(corfu-auto-prefix 1)
	(setq corfu-popupinfo-delay 0.01)
	:init
	(global-corfu-mode)
	(corfu-history-mode)
	(corfu-popupinfo-mode))

  (use-package kind-icon
    :custom
    (kind-icon-default-face 'corfu-default) ;; Compute blended background correctly
    :config
    (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))
  
  (use-package cape
	:init
	(mapc (lambda (f) (add-to-list 'completion-at-point-functions f))
		  '(cape-file cape-keyword))))

(kerscher/autocompletion)
