;;;; Shell development -*- lexical-binding: t; -*-

(defun kerscher/lang/shell ()
  "Load shell development packages"
  (interactive)
  
  (use-package flymake-shellcheck
    :commands flymake-shellcheck-load
    :hook
    (sh-mode . flymake-shellcheck-load)))

(defun kerscher/ui/shell/enable ()
  "Enable vterm and eat"
  (interactive)

  (use-package vterm
	:config
	;; vterm inherits Emacs' environment.  A login shell imports the
	;; user's shell PATH when Emacs was started by the graphical session.
	(setq vterm-shell (concat (expand-file-name "~/.nix-profile/bin/bash") " --login"))
	(use-package multi-vterm)
	:bind (("C-x p s" . kerscher/ui/shell/project)))

  (use-package eat))

(defun kerscher/ui/shell/project ()
  "Open a project terminal with its Direnv environment, when configured."
  (interactive)
  (require 'multi-vterm)
  (let ((project-root (multi-vterm-project-root)))
    (when (and (bound-and-true-p direnv-mode)
               (locate-dominating-file project-root ".envrc"))
      (direnv-update-directory-environment project-root))
    (multi-vterm-project)))

(defun send-region-to-shell (start end)
  "Execute region using shell-command"
  (interactive "r")
  (async-shell-command
   (if (use-region-p)
	   (buffer-substring-no-properties start end)
	 (buffer-string))
   (generate-new-buffer-name "*shell-output*")))

(add-to-list 'display-buffer-alist
			 '("\\*shell-output\\*"
			   (display-buffer-in-side-window)
			   (side . bottom)
			   (slot . 1)
			   (window-height . 0.33)))
