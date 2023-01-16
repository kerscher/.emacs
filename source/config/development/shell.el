;;;; Shell development

(defun kerscher/lang/shell ()
  "Load shell development packages"
  (interactive)

  (use-package shfmt
	:hook
    (sh-mode . shfmt-on-save-mode))

  (use-package flymake-shellcheck
    :commands flymake-shellcheck-load
    :hook
    (sh-mode . flymake-shellcheck-load)))

(defun kerscher/ui/shell/enable ()
  "Enable vterm and eat"
  (interactive)

  (use-package vterm
	:config
	(customize-set-variable 'vterm-shell "${HOME}/.nix-profile/bin/bash --login")
	(use-package multi-vterm))

  (use-package eat))

(defun send-region-to-shell (start end)
  "Execute region using shell-command"
  (interactive "r")
  (async-shell-command
   (if mark-active
	   (buffer-substring-no-properties start end)
	 (buffer-string))
   (generate-new-buffer-name "*shell-output*")))

(add-to-list 'display-buffer-alist
			 '("\\*shell-output\\*"
			   (display-buffer-in-side-window)
			   (side . bottom)
			   (slot . 1)
			   (window-height . 0.33)))
