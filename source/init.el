;; Configuration

;; Remove noise from titlebar
(setq frame-title-format "emacs")

;; Package manager
(setq package-enable-at-startup nil)
(load-library "url-handlers") ; Workaround for missing url-insert-buffer-contents.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(unless package--initialized
  (package-initialize))
(customize-set-variable 'async-bytecomp-package-mode t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package exec-path-from-shell
  :ensure t
  :init
  (exec-path-from-shell-initialize))

(defvar config
  '("user-interface/navigation"
    "user-interface/theme"
    "development/common"
    "development/go"
    "development/haskell"
    "development/jvm"
    "development/latex"
    "development/lisp"
    "development/python"
    "development/rust"
    "development/site-reliability-engineering"
    "communication/email"
    "communication/irc"
    "communication/presentations"
    "communication/writing"
    "accountancy"
    "agenda"
    "backups"
    "credentials"
    )
  "Configuration files for sets of common functionality.")

(mapc (lambda (c)
        (load (concat (file-name-directory load-file-name)
                      "config/"
                      c
                      ".el")))
      config)

;; Not meant to be kept on version control
(load (concat (file-name-directory load-file-name) "local-environment.el"))

;; Built-in customisations path
(let ((custom-file-location
      (concat (file-name-directory user-init-file)
              "customizations.el")))
  (progn
    (setq custom-file custom-file-location)
    (load custom-file-location)))

;; Start at scratch buffer
(customize-set-variable 'initial-buffer-choice t)
