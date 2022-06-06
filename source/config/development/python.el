;; Python

(defun kerscher/lang/python ()
  "Load 'anaconda-mode' and related packages."
  (interactive)
  (use-package anaconda-mode
    :ensure t
    :init
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
    :config
    (use-package blacken
      :ensure t
      :init
      (add-hook 'python-mode-hook 'blacken-mode))))
