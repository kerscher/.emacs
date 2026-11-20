;;;; Git source control -*- lexical-binding: t; -*-

(defun kerscher/vcs ()
  (interactive)
  (use-package magit
    :bind (:map global-map ("C-." . magit-status))
    :config
    (use-package magit-lfs)
    :hook (magit-mode . turn-on-font-lock))

  (use-package git-timemachine)
  (use-package git-link)

  (use-package majutsu
    :vc (:url "https://github.com/0WD0/majutsu"
              :rev :newest)))

(kerscher/vcs)
