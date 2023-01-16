;; Navigation

(defun kerscher/navigation ()
  (interactive)
  (use-package undo-tree
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
				("s-<right>" . windmove-right)))

  (use-package zoom)

  (use-package golden-ratio
	:config
	(golden-ratio-mode 1)
	:init
	(setq golden-ratio-auto-scale t))
  
  (use-package switch-window
	:bind (:map global-map
				("C-x o" . switch-window)
				("C-x C-1" . switch-window-then-maximize)
				("C-x C-2" . switch-window-then-split-below)
				("C-x C-3" . switch-window-then-split-right)
				("C-x C-0" . switch-window-then-delete)))


  (winner-mode +1)

  (use-package ace-jump-mode
	:bind (:map global-map
				("C-c SPC" . ace-jump-mode)
				("C-x SPC" . ace-jump-mode-pop-mark))
	:config
	(ace-jump-mode-enable-mark-sync))

  (use-package embark
	:bind (("C-n" . embark-act)
		   ("M-." . embark-dwim)
		   ("C-h B" . embark-bindings)))

  (use-package consult)

  (use-package embark-consult)

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
		   ("C-S-e" . project-switch-to-buffer)
		   ("C-p" . project-find-file)
		   ("C-s" . consult-line)
		   ("C-S-s" . consult-ripgrep)
		   ("C-x p s" . multi-vterm-project)
		   ("C-x p S-s" . project-shell)))

  (use-package orderless
	:custom
	(completion-styles '(orderless basic))
	(completion-category-overrides '((file (styles basic partial-completion)))))

  (use-package emacs
	:init
	(setq tab-always-indent 'complete)
	(setq create-lockfiles nil)
	:bind
	(("C-x p w" . flymake-show-buffer-diagnostics)
	 ("C-x p C-w" . flymake-show-project-diagnostics)))

  (use-package wgrep
	:init
	(use-package rg
	  :bind (:map global-map
				  ("M-S" . rg-project))))

  (use-package speedbar
	:init (customize-set-variable 'speedbar-use-images nil))

  (use-package sr-speedbar
	:bind ("C-k" . sr-speedbar-toggle)
	:init
	(setq sr-speedbar-auto-refresh nil)
	(setq speedbar-show-unknown-files t)
	(setq speedbar-use-images nil))

  (use-package multiple-cursors
	:bind (("<M-down>" . mc/mark-next-like-this)
		   ("<M-up>"   . mc/mark-previous-like-this)))

  (use-package which-key
	:init
	(which-key-mode)
	:config
	(setq which-key-idle-delay 0.001)))

(kerscher/navigation)
