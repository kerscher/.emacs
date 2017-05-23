;; LaTeX

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
  (let ((bibtex-completion-library
       (concat (getenv "HOME")
               "/library.bib")))
    (setq company-bibtex-bibliography bibtex-completion-library)
    (use-package helm-bibtex
      :ensure t
      :init
      (setq bibtex-completion-notes-path "/var/shortcuts/notes/papers.org"))))
