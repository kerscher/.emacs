;; User interface theme

;; Disable bold everywhere!
(set-face-bold-p 'bold nil)
(mapc
 (lambda (face)
   (set-face-attribute face nil :weight 'normal :underline nil))
 (face-list))

;; 8 characters for tabs is too much
(setq-default tab-width 4)

;; Hide unneeded widgets
(customize-set-variable 'inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode nil)

;; Line numbering
(global-linum-mode t) ; numbers on each line
(line-number-mode t)
(column-number-mode t)

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
(add-to-list 'custom-theme-load-path
             (concat
              (getenv "HOME")
              "/.emacs.d/themes"))
(load-theme 'eltbus t)
(set-face-background 'fringe "black")
(set-face-foreground 'vertical-border "black")

(customize-set-variable 'ansi-color-names-vector
 ["#242424"
  "#e5786d"
  "#95e454"
  "#cae682"
  "#8ac6f2"
  "#333366"
  "#ccaa8f"
"#f6f3e8"])

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
(set-face-attribute 'show-paren-match nil :weight 'extra-bold)

;; Colour hex codes when called by rainbow-mode
(use-package rainbow-mode :ensure t)
