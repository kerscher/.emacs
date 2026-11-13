;;;; Common IDE features

(defun kerscher/format-buffer-with-command (command &rest arguments)
  "Replace the buffer with output from COMMAND and ARGUMENTS."
  (save-restriction
    (widen)
    (let ((output (generate-new-buffer " *formatter output*"))
          (errors (make-temp-file "emacs-formatter-errors-")))
      (unwind-protect
          (let ((status (apply #'call-process-region
                               (point-min) (point-max)
                               command nil (list output errors) nil arguments)))
            (unless (and (integerp status) (zerop status))
              (error "%s failed (%s): %s" command status
                     (with-temp-buffer
                       (insert-file-contents errors)
                       (buffer-string))))
            (replace-buffer-contents output))
        (kill-buffer output)
        (delete-file errors)))))

(defun kerscher/development/common ()
  (interactive)

  (use-package direnv
	:config
	(direnv-mode))

  (use-package aggressive-indent
	:config
	(global-aggressive-indent-mode 1)))

(kerscher/development/common)
