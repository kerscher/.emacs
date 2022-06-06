;; LaTeX

(defun kerscher/lang/latex ()
  "Load 'auctex-latexmk' and related-packages."
  (interactive)
  (use-package auctex-latexmk
    :ensure t
    :init
    (auctex-latexmk-setup)
    ;; Default to outputting PDF.
    (setq-default TeX-PDF-mode t)
    (setq auctex-latexmk-inherit-TeX-PDF-mode t)))

