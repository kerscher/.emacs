;; Configuration

;; Enable package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(defvar config
  '("user-interface/navigation"
    "user-interface/theme"
    "development/common"
    "development/git"
    "development/autocompletion"
    "development/nix"
    "development/shell"
    "development/go"
    "development/haskell"
    "development/jvm"
    "development/latex"
	"development/lisp"
    "development/python"
    "development/rust"
    "development/devops"
    "development/dhall"
    "communication/irc"
    "communication/presentations"
    "communication/writing"
    "agenda"
    "backups"
    "credentials"
    "development/language-server-protocol"
    )
  "Configuration files for sets of common functionality.")

(mapc (lambda (c)
        (load (concat (file-name-directory load-file-name)
                      "config/"
                      c
                      ".el")))
      config)

(load (concat (file-name-directory load-file-name) "local-environment.el"))

;; Built-in customisations path
(let ((custom-file-location
       (concat (file-name-directory user-init-file)
               "customizations.el")))
  (progn
    (setq custom-file custom-file-location)
    (load custom-file-location)))
