;; LaTeX

(defun kerscher/lang/latex ()
  "Load 'auctex-latexmk' and related-packages."
  (interactive)
  (use-package auctex-latexmk
    :init
    (auctex-latexmk-setup)
    (setq-default TeX-PDF-mode t)
    (setq auctex-latexmk-inherit-TeX-PDF-mode t)))

