;; Navigation

;; Window and buffer manipulation
(global-set-key (kbd "M-t") 'kill-buffer-and-window)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-h") 'previous-buffer)

;; Find things anywhere — fuzzy matching.
(use-package helm
  :ensure t
  :bind (("M-x"     . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-o"     . helm-find-files)
         ("C-p"     . helm-browse-project)
         ("C-S-p"   . helm-M-x)
         ("C-e"     . helm-buffers-list)
         ("C-u"     . helm-M-x)
         )
  :init
  (require 'helm-config)
  (helm-mode 1)
  (helm-autoresize-mode 1)
  (customize-set-variable 'sublimity-mode t)
  :config
  (use-package helm-ls-git :ensure t))

;; SIDEBAR
(use-package speedbar
  :ensure t
  :init (customize-set-variable 'speedbar-use-images nil))

(use-package sr-speedbar
  :ensure t
  :bind ("C-k" . sr-speedbar-toggle)
  :init
  (setq sr-speedbar-auto-refresh nil)
  (setq speedbar-show-unknown-files t)
  (setq speedbar-use-images nil))

;; org-mode wants to hijack some keys. rectify it.
(use-package org
  :ensure t
  :bind (:map org-mode-map
              ("C-k" . sr-speedbar-toggle)
              ("C-o" . helm-find-files))
  :config
  (use-package org-beautify-theme :ensure t)
  (use-package org-bullets
    :ensure t
    :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))))

;; (require 'org)
;; (defun kerscher-retake-org-keybindings ()
;;   (progn
;;     (define-key org-mode-map (kbd "C-k") 'sr-speedbar-toggle)
;;     (define-key org-mode-map (kbd "C-o") 'helm-find-files)))
;; (eval-after-load "org-mode" (kerscher-retake-org-keybindings))

;; Multiple cursors.
(use-package multiple-cursors
  :ensure t
  :bind (("<M-down>" . mc/mark-next-like-this)
         ("<M-up>"   . mc/mark-previous-like-this)))

;; Fold sections
(use-package fold-this :ensure t)
