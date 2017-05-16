;; Configuration

;; Package manager
(load-library "url-handlers") ; Workaround for missing url-insert-buffer-contents.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(customize-set-variable 'async-bytecomp-package-mode t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(defvar config
  '("user-interface/navigation"
    "user-interface/theme"
    "development/common"
    "development/latex"
    "development/site-reliability-engineering"
    "development/haskell"
    "development/python"
    "development/go"
    "development/lisp"
    "development/rust"
    "communication/irc"
    "agenda"
    ;"communication/email"
    ;"accountancy"
    )
  "Configuration files for sets of common functionality.")

(mapcar (lambda (c)
          (load (concat (file-name-directory load-file-name)
                        "config/"
                        c
                        ".el")))
        config)

;; Built-in customisations path
(let ((custom-file-location
      (concat (file-name-directory load-file-name)
              "customisations.el")))
  (progn
    (setq custom-file custom-file-location)
    (load custom-file-location)))

;; Start at scratch buffer
(customize-set-variable 'initial-buffer-choice t)
