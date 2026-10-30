;;;; Formatting and indentation

(defun kerscher/formatting ()
  "Format buffers on save with 'apheleia' and detect indentation settings."
  (interactive)

  (use-package apheleia
    :config
    (setf (alist-get 'go-mode apheleia-mode-alist) 'goimports)
    (apheleia-global-mode +1))

  (use-package editorconfig
    :config
    (editorconfig-mode 1))

  (use-package dtrt-indent
    :config
    (dtrt-indent-global-mode 1)))
