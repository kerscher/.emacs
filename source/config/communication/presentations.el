;;; Presentations

(defun kerscher/org-present-start ()
  (setq-local face-remapping-alist '((default (:height 1.5) variable-pitch)
									 (header-line (:height 4.0) variable-pitch)
									 (org-document-title (:height 1.75) org-document-title)))

  (setq header-line-format " ")
  (visual-fill-column-mode 1)
  (visual-line-mode 1))

(defun kerscher/org-present-quit ()
  (setq-local face-remapping-alist '((default variable-pitch default)))
  
  (visual-fill-column-mode 0)
  (visual-line-mode 0))

(defun kerscher/org-after-navigation (buffer-name heading)
  (org-overview)
  (org-show-entry)
  (org-show-children))

(defun kerscher/presentations ()
  "Prepare for presentations with 'org-tree-slide'."
  (interactive)
  (use-package org-tree-slide
    :ensure t)

  (use-package org-present
	:config
	(require 'org-faces)
	(dolist (face '((org-level-1 . 1.5)
					(org-level-2 . 1.2)
					(org-level-3 . 1.1)))
	  (set-face-attribute (car face) nil :weight 'medium :height (cdr face)))
	(set-face-attribute 'org-block nil :inherit 'fixed-pitch)
	(set-face-attribute 'org-table nil :inherit 'fixed-pitch)
	(set-face-attribute 'org-formula nil :inherit 'fixed-pitch)
	(set-face-attribute 'org-code nil :inherit '(shadow fixed-pitch))
	(set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
	(set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
	(set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
	(set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch))
  
  (use-package visual-fill-column
	:hook
	(org-present-mode . kerscher/org-present-start)
	(org-present-mode-quit . kerscher/org-present-quit)
	(org-present-after)
	:config
	(add-hook 'org-present-after-navigate-functions 'kerscher/org-after-navigation)
	(setq visual-fill-column-width 110
		  visual-fill-column-center-text t)))

