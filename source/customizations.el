;; -*- lexical-binding: t; -*-

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "light gray" "dark gray" "light slate gray"])
 '(async-bytecomp-package-mode t)
 '(auth-source-save-behavior nil)
 '(blacken-line-length 78)
 '(company-quickhelp-color-background "gray18")
 '(company-quickhelp-color-foreground "white")
 '(company-quickhelp-delay 0.01)
 '(company-quickhelp-use-propertized-text t)
 '(custom-safe-themes
   '("dbade2e946597b9cda3e61978b5fcc14fa3afa2d3c4391d477bdaeff8f5638c5"
	 "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7"
	 "cbd85ab34afb47003fa7f814a462c24affb1de81ebf172b78cb4e65186ba59d2"
	 "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae"
	 "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c"
	 "372e869d8ac016429c1ce08c931e659cc244d9750fc04094652c04f2706551de"
	 "76046455ba22785c1013604593ac2b1d223a9fd615d22f7e9abc686c8e6478e5"
	 "a17e1daefaff04a6faafe532ba7217fe9c83bd6c9ed6af52e2e439813b1762bf"
	 default))
 '(erc-hide-list '("JOIN" "PART" "QUIT"))
 '(erc-nick "yyyyy")
 '(groovy-indent-offset 2)
 '(haskell-stylish-on-save t)
 '(helm-ff-lynx-style-map t)
 '(helm-grep-use-ioccur-style-keys t)
 '(helm-imenu-lynx-style-map t t)
 '(helm-occur-use-ioccur-style-keys t)
 '(helm-semantic-lynx-style-map t t)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice t)
 '(js-indent-level 2)
 '(message-kill-buffer-on-exit t)
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-info org-irc org-man org-toc
			  org-velocity))
 '(org-support-shift-select t)
 '(org-velocity-always-use-bucket t)
 '(org-velocity-bucket "/var/shortcuts/notes/notes.org.gpg")
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
	 ("nongnu" . "https://elpa.nongnu.org/nongnu/")
	 ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(0blayout ace-jump-mode anaconda-mode ansible ansible-doc ansible-vault
			  auctex-latexmk basic-theme bats-mode blacken
			  caddyfile-mode cargo color-theme-modern
			  company-anaconda company-ansible company-bibtex
			  company-go company-lsp company-quickhelp
			  company-terraform diminish dockerfile-mode eglot
			  eink-theme elm-mode ensime epresent
			  exec-path-from-shell exotica-theme flycheck-ensime
			  flycheck-golangci-lint flycheck-gometalinter
			  flycheck-ledger flycheck-mmark flycheck-mypy
			  flycheck-rust flycheck-yamllint fold-this
			  github-modern-theme go-eldoc go-errcheck god-mode
			  groovy-mode haskell-mode hasky-stack hcl-mode
			  helm-bibtex helm-gtags helm-ls-git helm-mu
			  helm-pass helm-unicode info+ intero jinja2
			  jinja2-mode jq-mode keychain-environment
			  late-night late-night-theme ledger-mode
			  less-css-mode lsp-groovy lsp-imenu lsp-mode
			  lsp-python lsp-sh lsp-ui magit markdown-mode
			  markdown-preview-mode monokai-alt-theme
			  multi-vterm multiple-cursors mustache
			  mustache-mode nginx-mode nix-mode nyan-mode
			  org-beautify-theme org-bullets org-plus-contrib
			  php-mode projectile purple-haze-theme pyenv-mode
			  racer rainbow rainbow-delimiters rainbow-mode
			  rebox2 restclient restclient-helm rg salt-mode
			  sbt-mode scala-mode spaceline sr-speedbar
			  switch-window systemd terraform-mode use-package
			  vagrant vagrant-tramp wgrep which-key yasnippet
			  zone-nyan))
 '(safe-local-variable-values '((inferior-lisp . "qlot exec ros -Q run")))
 '(scroll-bar-mode nil)
 '(speedbar-show-unknown-files t)
 '(speedbar-use-images nil)
 '(speedbar-verbosity-level 0)
 '(sr-speedbar-auto-refresh nil t)
 '(sublimity-mode t t)
 '(vterm-shell "/Users/yghor/.nix-profile/bin/bash --login")
 '(warning-suppress-log-types '((files missing-lexbind-cookie) (comp)))
 '(warning-suppress-types '((corfu-doc))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansible-section-face ((t nil)))
 '(ansible-task-label-face ((t nil)))
 '(helm-ls-git-added-copied-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-added-modified-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-branches-current ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-branches-name ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-conflict-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-deleted-not-staged-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-modified-and-staged-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-modified-not-staged-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-renamed-modified-face ((t (:underline nil :slant normal :weight normal))))
 '(helm-ls-git-untracked-face ((t (:underline nil :slant normal :weight normal)))))
