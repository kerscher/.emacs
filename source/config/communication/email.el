;;; Email

(defun kerscher/setup-email ()
  "Prepare Emacs to read email using mu4e."
  (interactive)
  (use-package smtpmail
    :ensure t
    :init
    (setq message-send-mail-function    'smtpmail-send-it
          smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
          smtpmail-default-smtp-server  "smtp.gmail.com"
          smtpmail-smtp-server          "smtp.gmail.com"
          smtpmail-debug-info           t))
  (add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu/mu4e")
  (require 'mu4e)
  (use-package helm-mu
    :ensure t
    :init
    (setq mu4e-maildir                      "/private/var/email/accounts/gmail.com/maildir"
          mu4e-sent-folder                  "/[Gmail]/Sent Mail"
          mu4e-drafts-folder                "/[Gmail]/Drafts"
          mu4e-trash-folder                 "/[Gmail]/Bin"
          mu4e-refile-folder                "/[Gmail]/All Mail"
          mu4e-html2text-command            "w3m -T text/html"
          mu4e-get-mail-command             "mbsync -a"
          mu4e-view-use-gnus                t
          mu4e-headers-skip-duplicates      t
          mu4e-change-filenames-when-moving t
          )))

(defun kerscher/comcarde-email ()
  "Configure email address"
  (interactive)
  (setq
   user-mail-address "yghor.kerscher@comcarde.com"
   user-full-name "Yghor Kerscher"))
