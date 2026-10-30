;; Agenda functionality -*- lexical-binding: t; -*-

;; org-mode wants to hijack some keys. rectify it.
(defvar kerscher/notes-file "/opt/src/notes.org.gpg"
  "Org notes file. Override in `local-environment.el'.")

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
  (setq org-default-notes-file kerscher/notes-file)
  (setq org-agenda-files (list kerscher/notes-file)))

(use-package org-ref)

(use-package org-roam
  :init
  (setq org-roam-directory (file-name-as-directory
                            (expand-file-name "roam" (file-name-directory kerscher/notes-file))))
  :bind (("C-c n l" . org-roam-buffer-toggle)
		 ("C-c n f" . org-roam-node-find)
		 ("C-c n i" . org-roam-node-insert))
  :config
  (make-directory org-roam-directory t)
  (org-roam-setup)
  (add-to-list 'display-buffer-alist
               '("\\*org-roam\\*"
				 (display-buffer-in-side-window)
				 (side . left)
				 (slot . 0)
				 (window-width . 0.33)
				 (window-parameters . ((no-other-window . t)
                                       (no-delete-other-windows . t))))))


