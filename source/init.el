;; Configuration -*- lexical-binding: t; -*-

;; Enable the built-in package manager.
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")))
(require 'warnings)
(defvar warning-suppress-log-types)
(add-to-list 'warning-suppress-log-types
             '(files missing-lexbind-cookie))
(when (fboundp 'native-compile)
  (require 'comp-run)
  (add-to-list 'native-comp-jit-compilation-deny-list
               "/multi-vterm\\.el\\'"))
(package-initialize)

(defun kerscher/package-install (name)
  "Install NAME from locally cached archive metadata."
  (unless (package-installed-p name)
    (unless package-archive-contents
      (user-error "No package archive metadata; run M-x package-refresh-contents"))
    (package-install name)))

(unless (package-installed-p 'use-package)
  (kerscher/package-install 'use-package))
(require 'use-package)
(defun kerscher/package-ensure (name ensure _state)
  "Install NAME when ENSURE requests it."
  (when ensure
    (kerscher/package-install name))
  (package-installed-p name))
(setq use-package-always-ensure t
      use-package-ensure-function #'kerscher/package-ensure)

(require 'package-vc)
(defun kerscher/package-vc-ensure (name url)
  "Install NAME from URL unless it is already installed."
  (unless (package-installed-p name)
    (package-vc-install url nil nil name)))

(defun kerscher/package-upgrade-all ()
  "Upgrade archive and VC packages.

Archive upgrades retain their interactive confirmation.  A VC checkout
with local changes is reported after archive upgrades have completed."
  (interactive)
  (package-upgrade-all t)
  (condition-case err
      (progn
        (package-vc-upgrade-all)
        (message "Package upgrades complete."))
    (error
     (message
      (concat "Archive packages upgraded; VC package upgrades did not complete: %s. "
              "Inspect and resolve local changes in the affected package checkout.")
      (error-message-string err)))))

(defvar config
  '("user-interface/navigation"
    "user-interface/theme"
    "development/common"
    "development/git"
	"development/docker"
    "development/autocompletion"
    "development/formatting"
    "development/debug"
    "development/nix"
    "development/shell"
    "development/go"
	"development/ocaml"
	"development/fsharp"
    "development/haskell"
	"development/javascript"
    "development/jvm"
    "development/latex"
	"development/lisp"
    "development/python"
    "development/rust"
    "development/zig"
    "development/devops"
    "development/dhall"
    "communication/irc"
    "communication/presentations"
    "communication/writing"
    "agenda"
    "ai"
    "backups"
    "credentials"
    "development/language-server-protocol"
    "development/eca"
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
