;; Agenda functionality

;; org-mode wants to hijack some keys. rectify it.
(use-package org
  :hook (org-mode . font-lock-mode)
  :bind (:map org-mode-map
              ("C-k" . sr-speedbar-toggle)
              ("C-e" . consult-buffer)
              ("C-c SPC" . ace-jump-mode)
              ("C-x SPC" . ace-jump-mode-pop-mark)
			  :map global-map
              ("C-c c" . org-capture)
              ("C-c a" . org-agenda))
  :config
  (setq org-default-notes-file "/opt/src/notes.org.gpg")
  (setq org-agenda-files '("/opt/src/notes.org.gpg")))

(use-package org-roam
  :bind (("C-c n l" . org-roam-buffer-toggle)
		 ("C-c n f" . org-roam-node-find)
		 ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-setup))
