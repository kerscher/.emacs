;; ECA -*- lexical-binding: t; -*-

(defun kerscher/eca ()
  "Load ECA, restricting its inline completion to GitHub Copilot."
  (interactive)
  (setenv "ECA_CONFIG"
          "{\"completion\":{\"model\":\"github-copilot/gpt-4.1\"}}")
  (use-package eca
    :straight (eca :type git :host github
                   :repo "editor-code-assistant/eca-emacs"
                   :files ("*.el"))
    :custom
    (eca-completion-idle-delay 0.2)
    :config
    (add-hook 'prog-mode-hook #'eca-completion-mode)))
