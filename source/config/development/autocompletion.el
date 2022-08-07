;;;; Autocompletion

(defun kerscher/autocompletion ()
  (interactive)
  (use-package corfu
	:custom
	(corfu-cycle t)
	(corfu-auto t)
	:init
	(global-corfu-mode)))

(kerscher/autocompletion)
