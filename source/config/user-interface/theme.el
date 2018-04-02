;; User interface theme

;; Disable bold everywhere!
(set-face-bold-p 'bold nil)
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list))

;; Hide unneeded widgets
(customize-set-variable 'inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode nil)

;; Line numbering
(global-linum-mode t)  ; numbers on each line
(line-number-mode nil) ; no line number on mode line

;; Fonts
(set-face-attribute 'default nil
                    :inherit nil
                    :box nil
                    :strike-through nil
                    :overline nil
                    :underline nil
                    :slant 'normal
                    :weight 'normal
                    :height 110
                    :width 'normal
                    :family "PragmataPro")

;; Colour theme
(use-package eink-theme
  :ensure t
  :init
  (load-theme 'eink t))

;; Better modeline.
(use-package spaceline
  :ensure t
  :init
  (require 'spaceline-config)
  (spaceline-emacs-theme)
  (spaceline-helm-mode 1)
  (spaceline-info-mode 1)
  (setq-default powerline-height 24
                spaceline-minor-modes-separator " "))

;; Colour nested delimiters differently
(use-package rainbow-delimiters
  :ensure t
  :init (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))
