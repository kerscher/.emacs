;; JVM languages

(defun kerscher/lang/jvm ()
  "Load JVM-hosted languages"
  (interactive)
  (use-package ensime
    :ensure t
    :pin melpa)
  (use-package sbt-mode :pin melpa)
  (use-package scala-mode :ensure )
  (use-package groovy-mode :ensure t))
