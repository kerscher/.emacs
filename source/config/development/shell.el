;;;; Shell development

(defun kerscher/lang/shell ()
  "Load shell development packages"
  (interactive)

  (use-package shfmt
    :init
    (add-hook 'sh-mode-hook 'shfmt-on-save-mode))

  (use-package flymake-shellcheck
    :commands flymake-shellcheck-load
    :init
    (add-hook 'sh-mode-hook 'flymake-shellcheck-load)))

(defun kerscher/ui/shell/enable ()
  "Enable vterm and sending commands to shell"
  (interactive)

  (use-package vterm
	:config
	(customize-set-variable 'vterm-shell "${HOME}/.nix-profile/bin/bash --login")
	(use-package multi-vterm)))

(defun send-region-to-shell (start end)
  "Execute region using shell-command"
  (interactive "r")
  (async-shell-command
   (if mark-active
	   (buffer-substring-no-properties start end)
	 (buffer-string))
   (generate-new-buffer-name "*shell-output*")))
