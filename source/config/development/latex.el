;; LaTeX

(require 'auctex-latexmk)
(auctex-latexmk-setup)

;; Default to outputting PDF.
(setq-default TeX-PDF-mode t)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)

;; Completions for Bibtex.
(require 'company-bibtex)
(add-to-list 'company-backends 'company-bibtex)

(let ((bibtex-path
       (concat (getenv "HOME")
               "/library.bib")))
  (setq company-bibtex-bibliography bibtex-path))
