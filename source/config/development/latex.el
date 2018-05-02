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
    (setq auctex-latexmk-inherit-TeX-PDF-mode t)
    :config
    (use-package company-bibtex
      :ensure t
      :init
      (require 'company-bibtex)
      (add-to-list 'company-backends 'company-bibtex))
    (setq bibtex-completion-bibliography (list (concat (getenv "HOME") "/library.bib")))
    (setq company-bibtex-bibliography (car bibtex-completion-bibliography))
    (use-package helm-bibtex
      :ensure t
      :init
      (setq bibtex-completion-notes-path "/var/shortcuts/notes/papers.org"))))

