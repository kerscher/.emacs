;; User interface theme

(defun kerscher/theme/set-ui-defaults ()
  (column-number-mode t)
  (customize-set-variable 'inhibit-startup-screen t)
  (customize-set-variable 'initial-buffer-choice t)
  (electric-pair-mode 1)
  (global-linum-mode t)					; numbers on each line
  (line-number-mode t)
  (menu-bar-mode 0)
  (put 'upcase-region 'disabled nil)
  (put 'downcase-region 'disabled nil)
  (scroll-bar-mode 0)
  (setq-default tab-width 4)
  (setq frame-title-format "emacs")
  (show-paren-mode 1)
  (tool-bar-mode 0))

(defun kerscher/theme/set-default-font-face-height (&optional height)
  (put 'kerscher/theme/set-default-font-face-height
       'initial-height
       160)
  (let ((height (or
                 height
                 (get 'kerscher/theme/set-default-font-face-height
                      'initial-height))))
    (set-face-attribute 'default nil
                        :inherit nil
                        :box nil
                        :strike-through nil
                        :overline nil
                        :underline nil
                        :slant 'normal
                        :weight 'normal
                        :height height
                        :width 'normal
                        :family "PragmataPro Mono Liga")))

(defun kerscher/theme/toggle-pair-programming ()
  (interactive)
  (if (get 'kerscher/theme/toggle-pair-programming 'enabled)
      (progn
        (kerscher/theme/set-default-font-face-height)
        (put 'kerscher/theme/toggle-pair-programming 'enabled nil))
    (progn
      (kerscher/theme/set-default-font-face-height
       (* 2 (get
             'kerscher/theme/set-default-font-face-height
             'initial-height)))
      (put 'kerscher/theme/toggle-pair-programming 'enabled t))))

(defun kerscher/theme/disable-bold-and-italic ()
  (interactive)
  (set-face-bold-p 'bold nil)
  (set-face-italic 'italic nil)
  (mapc
   (lambda (face)
     (set-face-attribute
      face nil
      :weight 'normal
      :underline nil
      :italic nil))
   (face-list)))

(defun kerscher/theme/colour-delimiters ()
  (interactive)

  ;; Colour nested delimiters differently
  (use-package rainbow-delimiters
    :ensure t
    :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

  ;; Colour matching delimiters
  (setq show-paren-delay 0)
  (show-paren-mode 1)

  (require 'paren)
  (set-face-background 'show-paren-match (face-background 'default))
  (set-face-foreground 'show-paren-match "#def")
  (set-face-attribute 'show-paren-match nil :weight 'extra-bold))

(defun kerscher/theme/reset ()
  (interactive)
  
  (kerscher/theme/set-ui-defaults)
  (kerscher/theme/set-default-font-face-height)
  (global-font-lock-mode 0)
  (kerscher/theme/disable-bold-and-italic)
  (kerscher/theme/colour-delimiters))

(defun kerscher/theme/load (variant)
  (use-package almost-mono-themes
    :straight (el-patch :type git :host github :repo "cryon/almost-mono-themes"
						:fork (:host github
									 :repo "kerscher-comcarde/almost-mono-themes")))

  (pcase variant
    ("cream" (progn
			   (mapc #'disable-theme custom-enabled-themes)
			   (load-theme 'almost-mono-cream t)
			   (use-package acme-theme
				 :ensure t
				 :config
				 (load-theme 'acme t))))
    ("dark" (progn
			  (mapc #'disable-theme custom-enabled-themes)
			  (mapc (lambda (f)
					  (set-face-background f "black")
					  (set-face-foreground f "gray"))
					'(speedbar-directory-face
					  speedbar-file-face
					  speedbar-highlight-face
					  speedbar-selected-face
					  speedbar-separator-face
					  speedbar-button-face
					  speedbar-tag-face
					  fringe))
			  (use-package tao-theme
				:config (load-theme 'tao-yin t))
			  (set-face-background 'default "black")))
	("white" (progn
			   (mapc #'disable-theme custom-enabled-themes)
			   (use-package tao-theme
				 :config (load-theme 'tao-yang t))))
    (_ (kerscher/theme/load "cream"))))

(kerscher/theme/load "cream")
(kerscher/theme/reset)
