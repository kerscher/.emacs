
;; Agenda functionality

;; org-mode wants to hijack some keys. rectify it.
(use-package org
  :ensure t
  :bind (:map org-mode-map
              ("C-k" . sr-speedbar-toggle)
              ("C-e" . helm-buffers-list)
              ("C-c SPC" . ace-jump-mode)
              ("C-x SPC" . ace-jump-mode-pop-mark)
         :map global-map
              ("C-c c" . org-capture)
              ("C-c a" . org-agenda))
  :config
  (setq org-default-notes-file "/opt/src/localhost/org/journal.org.gpg")
  (setq org-capture-templates
        '(("t" "Task" entry (file+headline "/opt/src/localhost/org/tasks.org.gpg" "Tasks")
           "* TODO %?\n  %i\n  %a" :kill-buffer t :empty-lines 1) 
          ("i" "Idea" entry (file+headline "/opt/src/localhost/org/ideas.org.gpg" "Ideas")
           "* %?\n  %U\n  %i" :prepend t :kill-buffer t :empty-lines 1)
          ("j" "Journal" entry (file+datetree "/opt/src/localhost/org/journal.org.gpg")
           "* %U\n  %?%i\n  %a" :prepend t :kill-buffer t :empty-lines 1)
          ("m" "Meeting" entry (file+datetree+prompt "/opt/src/localhost/org/meetings.org.gpg")
           "* %^{WHO} @ %^{COMPANY} %T\n  :PROPERTIES:\n  :WHO: %\\1\n  :COMPANY: %\\2\n  :SUBJECT: %^{SUBJECT|}\n  :END:\n\n** Agenda\n-%?\n\n** Participants\n-\n\n** Notes\n-\n" :kill-buffer t :empty-lines 1)))
  (setq org-agenda-files '("/opt/src/localhost/org/tasks.org.gpg"
                           "/opt/src/localhost/org/meetings.org.gpg"
                           )))

(defun kerscher/org-pretty ()
  "Make 'org-mode' prettier.  Needs to be separate as it breaks emacs-daemon startup."
  (interactive)
  (use-package org-bullets
    :ensure t
    :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))))
