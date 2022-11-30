;;;; Git source control

(defun kerscher/git ()
  (interactive)
  (use-package magit
    :bind (:map global-map ("C-." . magit-status))
    :config
    (use-package magit-lfs)
    :hook (magit-mode . turn-on-font-lock))

  (straight-use-package
   '(git-timemachine :type git :host nil :repo "https://gitlab.com/pidu/git-timemachine"
					 :fork (:host github :repo "emacsmirror/git-timemachine")))
  (use-package git-link))

(kerscher/git)
