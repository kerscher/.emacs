;;;; OCaml -*- lexical-binding: t; -*-

(defun kerscher/lang/ocaml ()
  (interactive)
  (use-package tuareg)

  (let ((opam-share (ignore-errors (car (process-lines "opam" "var" "share")))))
    (when (and opam-share (file-directory-p opam-share))
      (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
      (require 'ocp-indent nil t)
      (autoload 'merlin-mode "merlin" nil t nil)
      (add-hook 'tuareg-mode-hook 'merlin-mode t)
      (setq merlin-command 'opam))))
