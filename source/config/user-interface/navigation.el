;; Navigation

;; Window and buffer manipulation
(global-set-key (kbd "M-t") 'kill-buffer-and-window)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-h") 'previous-buffer)

;; Find things anywhere — fuzzy matching.
(require 'helm-config)
(require 'helm-ls-git)
(helm-mode 1)
(helm-autoresize-mode 1)
(customize-set-variable 'sublimity-mode t)

(global-set-key (kbd "M-x")     'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-o")     'helm-find-files)
(global-set-key (kbd "C-p")     'helm-browse-project)
(global-set-key (kbd "C-S-p")   'helm-M-x)
(global-set-key (kbd "C-e")     'helm-buffers-list)
(global-set-key (kbd "C-u")     'helm-M-x)

;; SIDEBAR
(require 'speedbar)
(customize-set-variable 'speedbar-use-images nil)

(require 'sr-speedbar)
(setq sr-speedbar-auto-refresh nil)
(setq speedbar-show-unknown-files t) ; show all files
(setq speedbar-use-images nil)       ; use text for buttons
(global-set-key (kbd "C-k") 'sr-speedbar-toggle)

;; org-mode wants to hijack some keys. rectify it.
(require 'org)
(defun kerscher-retake-org-keybindings ()
  (progn
    (define-key org-mode-map (kbd "C-k") 'sr-speedbar-toggle)
    (define-key org-mode-map (kbd "C-o") 'helm-find-files)))
(eval-after-load "org-mode" (kerscher-retake-org-keybindings))

;; Multiple cursors.
(require 'multiple-cursors)
(global-set-key (kbd "<M-down>")  'mc/mark-next-like-this)
(global-set-key (kbd "<M-up>")    'mc/mark-previous-like-this)

;; Fold sections
(require 'fold-this)

