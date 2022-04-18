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

  (use-package vterm))

(defun send-region-to-shell (start end)
  "Execute region using shell-command"
  (interactive "r")
  (async-shell-command
   (buffer-substring-no-properties start end)
   (generate-new-buffer-name "*shell-output*")))
