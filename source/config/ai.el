;; -*- lexical-binding: t; -*-
(defun kerscher/ai ()
  "Enable AI assistance"
  (interactive)

  (use-package copilot
	:ensure t)

  (use-package gptel))
