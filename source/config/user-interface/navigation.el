;; Navigation

;; Better window movement
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

;; Jump to point
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
  :config
  (use-package helm-ls-git :ensure t))

;; Search with `ripgrep` and edit directly from results

(use-package wgrep
  :ensure t
  :init
  (use-package rg
    :ensure t
    :bind (:map global-map
                ("M-S" . rg))))

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

;; Multiple cursors.
(use-package multiple-cursors
  :ensure t
  :bind (("<M-down>" . mc/mark-next-like-this)
         ("<M-up>"   . mc/mark-previous-like-this)))

;; Fold sections.
(use-package fold-this :ensure t)

;; Move to parts of each buffer by clicking. Also looks great.
;; (use-package nyan-mode
;;   :ensure t
;;   :init
;;   (nyan-mode 1))

;; Display next key combination
(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  :config
  (setq which-key-idle-delay 0.01))


;; Better modeline.
(use-package spaceline
  :ensure t
  :init
  (defface spaceline-highlight-face-sober
    '((t (:background "#171717"
          :foreground "#7A7BAE"
          :inherit    'mode-line)))
    "Toned down highlight face for Spaceline"
    :group 'spaceline)
  (defun spaceline-highlight-face-sober-func ()
    'spaceline-highlight-face-sober)
  (require 'spaceline-config)
  (spaceline-emacs-theme)
  (spaceline-helm-mode 1)
  (spaceline-info-mode 1)
  (setq-default powerline-height 24
                spaceline-minor-modes-separator " "
                spaceline-highlight-face-func 'spaceline-highlight-face-sober-func)
  (set-face-attribute 'powerline-active2 nil :background "black")
  (set-face-attribute 'powerline-inactive2 nil :background "black"))

(use-package info+ :ensure t)
