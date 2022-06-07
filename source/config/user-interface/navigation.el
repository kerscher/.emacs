;; Navigation

(defun kerscher/navigation ()
  (interactive)
  (use-package undo-tree
	:ensure t
	:bind (:map global-map
				("C-/" . undo-tree-undo)
				("C-?" . undo-tree-redo)
				("C-x u" . undo-tree-visualize))
	:config
	(global-undo-tree-mode))

  (use-package buffer-move
	:bind (:map global-map
				("S-s-<down>" . buf-move-down)
				("S-s-<up>" . buf-move-up)
				("S-s-<left>" . buf-move-left)
				("S-s-<right>" . buf-move-right)
				("s-<down>" . windmove-down)
				("s-<up>" . windmove-up)
				("s-<left>" . windmove-left)
				("s-<right>" . windmove-right)
				("M-S-<down>" . shrink-window)
				("M-S-<up>" . enlarge-window)
				("M-S-<left>" . shrink-window-horizontally)
				("M-S-<right>" . enlarge-window-horizontally)))

  (use-package zoom)

  (use-package switch-window
	:ensure t
	:bind (:map global-map
				("C-x o" . switch-window)
				("C-x C-1" . switch-window-then-maximize)
				("C-x C-2" . switch-window-then-split-below)
				("C-x C-3" . switch-window-then-split-right)
				("C-x C-0" . switch-window-then-delete)))

  (use-package ace-jump-mode
	:ensure t
	:bind (:map global-map
				("C-c SPC" . ace-jump-mode)
				("C-x SPC" . ace-jump-mode-pop-mark))
	:config
	(ace-jump-mode-enable-mark-sync))

  (use-package consult)

  (use-package marginalia
	:init
	(marginalia-mode))

  (use-package vertico
	:init
	(vertico-mode)
	(setq vertico-resize t)
	(setq vertico-cycle t)
	:bind (("C-o" . find-file)
		   ("C-t" . execute-extended-command)
		   ("C-e" . consult-buffer)
		   ("C-p" . project-find-file)
		   ("C-s" . consult-line)
		   ("C-S-s" . consult-ripgrep)))

  (use-package orderless
	:ensure t
	:custom
	(completion-styles '(orderless basic))
	(completion-category-overrides '((file (styles basic partial-completion)))))

  (use-package emacs
	:init
	(setq tab-always-indent 'complete))

  (use-package wgrep
	:ensure t
	:init
	(use-package rg
      :ensure t
      :bind (:map global-map
                  ("M-S" . rg-project))))

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

  (use-package multiple-cursors
	:ensure t
	:bind (("<M-down>" . mc/mark-next-like-this)
           ("<M-up>"   . mc/mark-previous-like-this)))

  (use-package which-key
	:ensure t
	:init
	(which-key-mode)
	:config
	(setq which-key-idle-delay 0.001)))

(kerscher/navigation)
