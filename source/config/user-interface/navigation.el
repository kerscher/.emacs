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

  (use-package switch-window
	:bind (:map global-map
				("C-x o" . switch-window)
				("C-x C-1" . switch-window-then-maximize)
				("C-x C-2" . switch-window-then-split-below)
				("C-x C-3" . switch-window-then-split-right)
				("C-x C-0" . switch-window-then-delete)))

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
  
  ;;   (defun embark-which-key-indicator ()
  ;; 	"An embark indicator that displays keymaps using which-key.
  ;; The which-key help message will show the type and value of the
  ;; current target followed by an ellipsis if there are further
  ;; targets."
  ;; 	(lambda (&optional keymap targets prefix)
  ;;       (if (null keymap)
  ;;           (which-key--hide-popup-ignore-command)
  ;; 		(which-key--show-keymap
  ;; 		 (if (eq (plist-get (car targets) :type) 'embark-become)
  ;; 			 "Become"
  ;;            (format "Act on %s '%s'%s"
  ;;                    (plist-get (car targets) :type)
  ;;                    (embark--truncate-target (plist-get (car targets) :target))
  ;;                    (if (cdr targets) "…" "")))
  ;; 		 (if prefix
  ;; 			 (pcase (lookup-key keymap prefix 'accept-default)
  ;;                ((and (pred keymapp) km) km)
  ;;                (_ (key-binding prefix 'accept-default)))
  ;;            keymap)
  ;; 		 nil nil t (lambda (binding)
  ;; 					 (not (string-suffix-p "-argument" (cdr binding))))))))

  ;;   (setq embark-indicators
  ;; 		'(embark-which-key-indicator
  ;; 		  embark-highlight-indicator
  ;; 		  embark-isearch-highlight-indicator))

  ;;   (defun embark-hide-which-key-indicator (fn &rest args)
  ;; 	"Hide the which-key indicator immediately when using the completing-read prompter."
  ;; 	(which-key--hide-popup-ignore-command)
  ;; 	(let ((embark-indicators
  ;;            (remq #'embark-which-key-indicator embark-indicators)))
  ;;       (apply fn args)))

  ;;   (advice-add #'embark-completing-read-prompter
  ;;               :around #'embark-hide-which-key-indicator)
  
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
		   ("C-p" . project-find-file)
		   ("C-s" . consult-line)
		   ("C-S-s" . consult-ripgrep)))

  (use-package orderless
	:custom
	(completion-styles '(orderless basic))
	(completion-category-overrides '((file (styles basic partial-completion)))))

  (use-package emacs
	:init
	(setq tab-always-indent 'complete))

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
