;; ECA -*- lexical-binding: t; -*-

(defun kerscher/eca ()
  "Load ECA, restricting its inline completion to GitHub Copilot."
  (interactive)
  (setenv "ECA_CONFIG"
          "{\"completion\":{\"model\":\"github-copilot/gpt-4.1\"}}")
  (kerscher/package-vc-ensure
   'eca "https://github.com/editor-code-assistant/eca-emacs")
  (use-package eca
	:ensure nil
    :custom
    (eca-completion-idle-delay 0.2)
    :config
    (add-hook 'prog-mode-hook #'eca-completion-mode)))
