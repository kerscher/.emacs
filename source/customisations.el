(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(async-bytecomp-package-mode t)
 '(company-ghc-show-info t)
 '(custom-enabled-themes (quote (purple-haze)))
 '(custom-safe-themes
   (quote
    ("90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "cc0dbb53a10215b696d391a90de635ba1699072745bf653b53774706999208e3" "8577da1641ed4bdf255341ca92e3d0e49c9f4d574458f09ce78159690442cade" default)))
 '(debug-on-error t)
 '(erc-hide-list (quote ("JOIN" "PART" "QUIT")))
 '(erc-nick "yyyyy")
 '(global-linum-mode t)
 '(haskell-font-lock-symbols t)
 '(haskell-hoogle-command "/home/yghor/.local/bin/hoogle")
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(line-number-mode nil)
 '(main-line-color1 "#222232" t)
 '(main-line-color2 "#333343" t)
 '(message-kill-buffer-on-exit t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(package-enable-at-startup nil)
 '(package-selected-packages
   (quote
    (flycheck-ledger ledger-mode org-present purple-haze-theme minimal-theme markdown-mode notmuch bbdb bbdb-vcard company-cabal company-math org org-beautify-theme company company-ghc org-bullets nginx-mode sr-speedbar dracula-theme magit multiple-cursors helm-ls-git ac-helm helm helm-bibtex helm-hayoo helm-hoogle helm-unicode paredit rainbow-delimiters)))
 '(powerline-color1 "#222232" t)
 '(powerline-color2 "#333343" t)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(scroll-bar-mode nil)
 '(speedbar-show-unknown-files t)
 '(speedbar-update-flag nil)
 '(speedbar-use-images nil)
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-right-side t)
 '(sublimity-mode t t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :family "PragmataPro"))))
 '(agda2-highlight-coinductive-constructor-face ((t (:foreground "hot pink"))))
 '(agda2-highlight-datatype-face ((t (:foreground "cyan"))))
 '(agda2-highlight-error-face ((t (:foreground "firebrick1" :underline nil))))
 '(agda2-highlight-field-face ((t (:foreground "hot pink"))))
 '(agda2-highlight-function-face ((t (:foreground "cyan"))))
 '(agda2-highlight-inductive-constructor-face ((t (:foreground "hot pink"))))
 '(agda2-highlight-keyword-face ((t (:foreground "medium orchid"))))
 '(agda2-highlight-module-face ((t (:foreground "cyan"))))
 '(agda2-highlight-number-face ((t (:foreground "lawn green"))))
 '(agda2-highlight-postulate-face ((t (:foreground "cyan"))))
 '(agda2-highlight-primitive-face ((t (:foreground "medium spring green"))))
 '(agda2-highlight-primitive-type-face ((t (:foreground "medium spring green"))))
 '(agda2-highlight-record-face ((t (:foreground "cyan"))))
 '(agda2-highlight-string-face ((t (:foreground "light coral"))))
 '(company-scrollbar-bg ((t (:background "gray18" :underline nil :weight normal))))
 '(company-scrollbar-fg ((t (:background "slate blue" :underline nil :weight normal))))
 '(company-tooltip ((t (:background "gray18" :foreground "light gray" :underline nil :weight normal))))
 '(company-tooltip-annotation ((t (:foreground "light slate blue" :underline nil :weight normal))))
 '(company-tooltip-common ((t (:foreground "medium slate blue" :underline nil :weight normal))))
 '(company-tooltip-selection ((t (:background "black" :foreground "violet red" :underline nil :weight normal))))
 '(helm-M-x-key ((t (:foreground "orchid" :underline nil :weight normal))))
 '(helm-buffer-directory ((t (:background "gray18" :foreground "violet" :underline nil :weight normal))))
 '(helm-buffer-file ((t (:foreground "orchid" :underline nil :weight normal))))
 '(helm-buffer-not-saved ((t (:foreground "medium orchid" :underline nil :weight normal))))
 '(helm-buffer-process ((t (:foreground "orchid" :underline nil :weight normal))))
 '(helm-buffer-saved-out ((t (:background "black" :foreground "magenta" :underline nil :weight normal))))
 '(helm-candidate-number ((t (:foreground "violet red" :underline nil :weight normal))))
 '(helm-ff-directory ((t (:background "black" :foreground "plum" :underline nil :weight normal))))
 '(helm-ff-dotted-directory ((t (:background "black" :foreground "violet" :underline nil :weight normal))))
 '(helm-ff-dotted-symlink-directory ((t (:background "black" :foreground "magenta" :underline nil :weight normal))))
 '(helm-ff-file ((t (:foreground "white" :underline nil :weight normal))))
 '(helm-ff-prefix ((t (:background "plum" :foreground "black" :underline nil :weight normal))))
 '(helm-ff-symlink ((t (:foreground "hot pink" :underline nil :weight normal))))
 '(helm-header ((t (:inherit header-line :foreground "hot pink"))))
 '(helm-header-line-left-margin ((t (:foreground "violet red" :underline nil :weight normal))))
 '(helm-history-remote ((t (:foreground "sky blue" :underline nil :weight normal))))
 '(helm-match ((t (:foreground "magenta" :underline nil :weight normal))))
 '(helm-match-item ((t (:background "dark slate blue" :foreground "white" :underline nil :weight normal))))
 '(helm-prefarg ((t (:foreground "magenta"))))
 '(helm-selection ((t (:background "dark slate blue" :underline nil :weight normal))))
 '(helm-separator ((t (:foreground "dark violet" :underline nil :weight normal))))
 '(helm-source-header ((t (:foreground "turquoise" :height 1.3))))
 '(helm-visible-mark ((t (:foreground "chartreuse")))))
