;; Backups

(let ((backup-dir (locate-user-emacs-file "backups/")))
  (make-directory backup-dir t)
  (setq backup-directory-alist `(("." . ,backup-dir))
        backup-by-copying t
        version-control t))
