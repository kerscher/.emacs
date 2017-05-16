;; Agenda functionality

;; org-mode wants to hijack some keys. rectify it.
(use-package org
  :ensure t
  :bind (:map org-mode-map
              ("C-k" . sr-speedbar-toggle)
              ("C-o" . helm-find-files)
         :map global-map
              ("C-c c" . org-capture)
              ("C-c a" . org-agenda))
  :config
  (use-package org-beautify-theme :ensure t)
  (use-package org-bullets
    :ensure t
    :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
  (setq org-default-notes-file "/var/shortcuts/notes/journal.org.gpg")
  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline "/var/shortcuts/notes/todos.org.gpg" "TODOs")
           "* TODO %?\n  %i\n  %a" :kill-buffer t) 
          ("j" "Journal" entry (file+datetree "/var/shortcuts/notes/journal.org.gpg")
           "* %U\n  %?%i\n  %a" :prepend t :kill-buffer t)
          ("p" "Phone call" entry (file+datetree "/var/shortcuts/notes/phonecalls.org.gpg")
           "* %?\n  %U\n  %i" :prepend t :kill-buffer t)
          ("m" "Meeting" entry (file+datetree+prompt "/var/shortcuts/notes/meetings.org.gpg")
           "* %^{NAME} @ %^{COMPANY} %T\n  :PROPERTIES:\n  :NAME: %\\1\n  :COMPANY: %\\2\n  :LOCATION: %^{LOCATION|}\n  :SUBJECT: %^{SUBJECT|}\n  :END:\n  %?")))
  (setq org-agenda-files '("/var/shortcuts/notes/notes.org.gpg"
                           "/var/shortcuts/notes/journal.org.gpg"
                           "/var/shortcuts/notes/phonecalls.org.gpg"
                           "/var/shortcuts/notes/todos.org.gpg"
                           "/var/shortcuts/notes/meetings.org.gpg")))
