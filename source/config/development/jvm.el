;; JVM languages

(defun kerscher/lang/jvm ()
  "Load JVM-hosted languages"
  (interactive)
  (use-package groovy-mode :ensure t)
  (use-package lsp-java
    :ensure t
    :after lsp
    :config
    (add-hook 'java-mode-hook 'lsp)))
