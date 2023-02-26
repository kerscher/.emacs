;;;; OCaml

(defun kerscher/lang/ocaml ()
  (interactive)
  (use-package tuareg)
  (use-package caml)

  (add-to-list 'load-path "/Users/yghorkerscher/.opam/default/share/emacs/site-lisp")
  (require 'ocp-indent)

  (let ((opam-share (ignore-errors (car (process-lines "opam" "var" "share")))))
    (when (and opam-share (file-directory-p opam-share))
      (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
      (autoload 'merlin-mode "merlin" nil t nil)
      (add-hook 'tuareg-mode-hook 'merlin-mode t)
      (add-hook 'caml-mode-hook 'merlin-mode t)
      (setq merlin-command 'opam))))
