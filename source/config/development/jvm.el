;; JVM languages

(defun kerscher/lang/jvm ()
  "Load JVM-hosted languages"
  (interactive)
  (use-package sbt-mode    :ensure t :pin melpa)
  (use-package scala-mode  :ensure t :pin melpa)
  (use-package ensime
    :ensure t
    :pin melpa
    :init
    (setq ensime-eldoc-hints 'all)
    (setq ensime-search-interface 'helm)
    (use-package flycheck-ensime :ensure t :pin melpa)
    )
  (use-package groovy-mode :ensure t :pin melpa))
