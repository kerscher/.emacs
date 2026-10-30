;;;; Shell development

(defun kerscher/lang/shell ()
  "Load shell development packages"
  (interactive)

  (use-package powershell)
  
  (use-package flymake-shellcheck
    :commands flymake-shellcheck-load
    :hook
    (sh-mode . flymake-shellcheck-load)))

(defun kerscher/ui/shell/enable ()
  "Enable vterm and eat"
  (interactive)

  (use-package vterm
	:config
	(customize-set-variable 'vterm-shell (concat (expand-file-name "~/.nix-profile/bin/bash") " --login"))
	(use-package multi-vterm)
	:bind (("C-x p s" . multi-vterm-project)))

  (use-package eat))

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
