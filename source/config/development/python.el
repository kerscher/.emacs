;; Python

(defun kerscher/lang/python ()
  "Load 'anacond-mode' and related packages."
  (interactive)
  (use-package anaconda-mode
    :ensure t
    :init
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode)
    :config
    (use-package company-anaconda
      :ensure t
      :init
      (add-to-list 'company-backends '(company-anaconda)))
    (use-package pyenv-mode
      :ensure t
      :init
      (pyenv-mode))))

