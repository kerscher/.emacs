;; Python

(defun kerscher/lang/python ()
  "Load python-related packages."
  (interactive)
  (use-package blacken
    :ensure t
    :hook (python-mode . blacken-mode)))
