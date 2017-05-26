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

  (use-package helm-mu
    :ensure t
    :init
    (setq mu4e-mu-home           "/var/shortcuts/mail/search-indexes"
          mu4e-maildir           "/var/shortcuts/mail/accounts/gmail.com/maildir"
          mu4e-sent-folder       "/[Google Mail]/.Sent Mail"
          mu4e-drafts-folder     "/[Google Mail]/.Drafts"
          mu4e-trash-folder      "/[Google Mail]/.Bin"
          mu4e-refile-folder     "/[Google Mail]/.All Mail"
          mu4e-html2text-command "w3m -T text/html"
          mu4e-view-show-images  t)))


