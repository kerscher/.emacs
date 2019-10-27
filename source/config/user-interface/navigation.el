;; Navigation

;; Better window movement.
(use-package switch-window
  :ensure t
  :bind (:map global-map
              ("C-x o" . switch-window)
              ("C-x C-1" . switch-window-then-maximize)
              ("C-x C-2" . switch-window-then-split-below)
              ("C-x C-3" . switch-window-then-split-right)
              ("C-x C-0" . switch-window-then-delete)))

;; Buffer manipulation
(global-set-key (kbd "M-t") 'kill-buffer-and-window)
(global-set-key (kbd "M-n") 'next-buffer)
(global-set-key (kbd "M-h") 'previous-buffer)

;; Jump to point.
(use-package ace-jump-mode
  :ensure t
  :bind (:map global-map
              ("C-c SPC" . ace-jump-mode)
              ("C-x SPC" . ace-jump-mode-pop-mark))
  :config
  (ace-jump-mode-enable-mark-sync))

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
  (define-key helm-map (kbd "<left>") 'helm-previous-source)
  (define-key helm-map (kbd "<right>") 'helm-next-source)
  (customize-set-variable 'helm-ff-lynx-style-map t)
  (customize-set-variable 'helm-imenu-lynx-style-map t)
  (customize-set-variable 'helm-semantic-lynx-style-map t)
  (customize-set-variable 'helm-occur-use-ioccur-style-keys t)
  (customize-set-variable 'helm-grep-use-ioccur-style-keys t)
  :config
  (use-package helm-ls-git :ensure t))

;; Search with `ripgrep` and edit directly from results.
(use-package wgrep
  :ensure t
  :init
  (use-package rg
    :ensure t
    :bind (:map global-map
                ("M-S" . rg-project))))

;; Sidebar.
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

;; Multiple cursors.
(use-package multiple-cursors
  :ensure t
  :bind (("<M-down>" . mc/mark-next-like-this)
         ("<M-up>"   . mc/mark-previous-like-this)))

;; Display next key combination.
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  :config
  (setq which-key-idle-delay 0.001))
