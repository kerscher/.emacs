;; Javascript

(defun kerscher/lang/javascript ()
  "Load 'jq-mode'"
  (interactive)
  (use-package jq-mode
    :ensure t)
  (add-hook 'js-mode-hook
            #'(lambda ()
                (add-hook
                 'before-save-hook
                 #'(lambda ()
                     (save-mark-and-excursion
                       (json-pretty-print-buffer-ordered)))))))
