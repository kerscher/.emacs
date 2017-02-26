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
                    :stipple nil
                    :background "#000000"
                    :foreground "#F8F8F2"
                    :inverse-video nil
                    :box nil
                    :strike-through nil
                    :overline nil
                    :underline nil
                    :slant 'normal
                    :weight 'normal
                    :height 110
                    :width 'normal
                    :family "PragmataPro")

;; Helm colours
(set-face-attribute 'helm-candidate-number nil        :foreground "salmon")
(set-face-attribute 'helm-header nil                  :inherit 'header-line :foreground "hot pink")
(set-face-attribute 'helm-header-line-left-margin nil :foreground "salmon")
(set-face-attribute 'helm-match nil                   :foreground "coral")
(set-face-attribute 'helm-prefarg nil                 :foreground "magenta")
(set-face-attribute 'helm-selection nil               :background "gray10" :distant-foreground "hot pink")
(set-face-attribute 'helm-separator nil               :foreground "orange red")
(set-face-attribute 'helm-source-header nil           :foreground "turquoise" :height 1.3)
(set-face-attribute 'helm-visible-mark nil            :foreground "chartreuse")

;; Colour theme
(use-package purple-haze-theme
  :ensure t
  :init
  (require 'purple-haze-theme)
  (enable-theme 'purple-haze))

(customize-set-variable 'main-line-color1 "#222232")
(customize-set-variable 'main-line-color2 "#333343")
(customize-set-variable 'powerline-color1 "#222232")
(customize-set-variable 'powerline-color2 "#333343")

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

