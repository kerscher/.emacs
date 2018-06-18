(deftheme eltbus "An experimental theme that puts subtle back into emacs")

(let ((black  "#000000")
      (white "#ffffff")
      (text-white "#dddddd")
      (brighter-text "#cccccc")
      (bright-black "#222222")
      (dull-white "#bbbbbb")
      (almost-invisible "#666666")
      (reddish "#f8c0c0")
      (bluish "#c0c0f8")
      (greenish "#c0f860")
      )
  (let ((default-color `(:background ,black :foreground ,text-white))
	(brighter `(:background ,black :foreground ,brighter-text))
	(lessbright `(:background ,black :foreground ,dull-white))
	(standout-dull `(:background ,bright-black :foreground ,dull-white))
	(less-distraction `(:background ,black :foreground ,almost-invisible))
	(link-like `(:background ,black :foreground ,bluish))
	(success-like `(:background ,black :foreground ,greenish))
	(err-like `(:background ,black :foreground ,reddish))
	(fmt-none  `(:weight normal :slant normal :underline nil :inverse-video nil))
	(fmt-bld `(:weight normal :slant normal :underline nil :inverse-video nil))
	(fmt-bldi `(:weight normal :slant italic :underline nil :inverse-video nil))
	(fmt-und `(:weight normal : slant normal :underline t :inverse-video nil))
	(fmt-rev `(:weight normal : slant normal :underline nil :inverse-video t))
	(fmt-revb `(:weight normal : slant normal :underline nil :inverse-video t)))
  (custom-theme-set-faces
   'eltbus
   ;; Comments are things that are missing
   
   `(default ((t (,@default-color ,@fmt-none))))
   ;;cursor
   `(error ((t (,@err-like ,@fmt-none))))
   `(escape-glyph-face ((t (,@err-like ,@fmt-none))))
   `(fringe ((t (,@standout-dull ,@fmt-none))))
   `(linum ((t (,@less-distraction ,@fmt-none))))
   ;; hl-line
   `(hl-line ((t (:underline t))))
   `(highlight ((t (,@fmt-bld))))
   `(region ((t (:inverse-video t))))
   ;; isearch
   ;; isearch-fail
   ;; lazy-highlight
   `(link ((t (,@link-like ,@fmt-und))))
   `(link-visited ((t (,@link-like ,@fmt-und))))
   ;;menu
   `(minibuffer-prompt ((t (,@standout-dull ,@fmt-bld))))
   `(mode-line ((t (,@standout-dull ,@fmt-rev))))
   `(mode-line-inactive ((t (,@standout-dull ,@fmt-rev))))
   ;;secondary-selection
   ;;shadow
   `(trailing-whitespace ((t (,@err-like ,@fmt-rev))))
   ;;vertical-border
   ;;comint-highlight-prompt
   ;;compilation-info
   `(compilation-info ((t (,@success-like ,@fmt-bld))))
   `(compilation-warning ((t (,@err-like ,@fmt-bld))))
   ;; custom-button
   ;; custom-button-mouse
   ;; custom-button-pressed
   ;; custom-changed
   ;; custom-comment-tag
   ;; custom-documentation
   ;; custom-group-tag
   ;; custom-group-tag-1
   ;; custom-invalid
   ;; custom-link
   ;; custom-state
   ;; custom-variable-tag
   ;; diff-file-header
   ;; diff-header
   `(ido-only-match ((t (,@success-like ,@fmt-none))))
   `(ido-subdir ((t (,@default-color ,@fmt-bld))))
   `(ido-first-match ((t (,@link-like ,@fmt-und))))
   ;; emacs-wiki-bad-link-face
   ;; emacs-wiki-link-face
   ;; emacs-wiki-verbatim-face
   ;; eshell-ls-archive
   ;; eshell-ls-backup
   ;; eshell-ls-clutter
   ;; eshell-ls-directory
   ;; eshell-ls-executable
   ;; eshell-ls-missing
   ;; eshell-ls-product
   ;; eshell-ls-readonly
   ;; eshell-ls-special
   ;; eshell-ls-symlink
   ;; eshell-ls-unreadable
   ;; eshell-prompt
   `(font-lock-builtin-face ((t (,@lessbright ,@fmt-bld))))
   `(font-lock-comment-face ((t (,@less-distraction ,@fmt-none))))
   `(font-lock-constant-face ((t (,@lessbright ,@fmt-none))))
   `(font-lock-function-name-face ((t (,@lessbright ,@fmt-none))))
   `(font-lock-keyword-face ((t (,@brighter ,@fmt-bld))))
   `(font-lock-string-face ((t (,@standout-dull ,@fmt-none))))
   `(font-lock-type-face ((t (,@brighter ,@fmt-bld))))
   `(font-lock-variable-name-face ((t (,@lessbright ,@fmt-none))))
   `(font-lock-warning-face ((t (,@err-like ,@fmt-none))))
   `(font-lock-doc-face ((t (,@less-distraction ,@fmt-bld))))
   ;; font-lock-doc-string-face
   ;; font-lock color-constant-face
   `(font-lock-comment-delimiter-face ((t (,@lessbright ,@fmt-none))))
   `(font-lock-preprocessor-face ((t (,@standout-dull ,@fmt-none))))
   ;; font-lock-reference-face
   ;; font-lock-negation-char-face
   ;; font-lock-other-type-face
   `(font-lock-special-keyword-face ((t (,@brighter ,@fmt-bldi))))
   ;; font-lock-exit-face
   `(font-lock-other-emphasized-face ((t (,@default-color ,@fmt-bld))))
   ;; font-lock-regexp-grouping-backslash
   ;; info-xref
   ;; info-xref-visited
   `(org-todo ((t (,@err-like ,@fmt-bld))))
   `(org-todo-keyword-face ((t (,@err-like ,@fmt-none))))
   `(org-done ((t (,@success-like ,@fmt-bld))))
   `(org-done-keyword-face ((t (,@success-like ,@fmt-none))))
   `(table-cell ((t (,@default-color ,@fmt-none))))

   ;; outline-1
   ;; outline-2
   ;; outline-3
   ;; outline-4
   ;; outline-5
   ;; outline-6
   ;; outline-7
   ;; outline-8

   ;; speedbar-button-face
   ;; speedbar-directory-face
   ;; speedbar-file-face
   ;; speedbar-highlight-face
   ;; speedbar-selected-face
   ;; speedbar-separator-face
   ;; speedbar-tag-face
   `(show-paren-match ((t (:background "gray10"
			   ,@fmt-rev))))
   `(show-paren-mismatch ((t (:background "red" :foreground "black" ,@fmt-rev))))
   ;; widget-field
   ;;widget-single-line
   `(flymake-errline ((t (,@err-like ,@fmt-bld))))
   `(flymake-warnline ((t (,@err-like ,@fmt-none))))
   ;; column-marker-1
   ;; column-marker-2
   ;; column-marker-3

   ;; jabber-stuff
   ;; gnus-stuff
   ;; message-stuff
   `(paren-face ((t (,@default-color))))
   ;; rainbow-delimiters-stuff
   ;; slime-stuff
   ;; whitespace-stuff
   ;; rcirc-stuff
   ;; erc-stuff
   `(font-latex-warning-face ((t (,@err-like ,@fmt-none))))
   ;; font-latex-sectioning-5-face

   `(persp-selected-face ((t (,@fmt-bld))))
   `(magit-item-highlight ((t (,@fmt-bld))))
   `(magit-log-sha1 ((t (,@link-like))))
   `(lazy-highlight ((t (:background ,bluish :foreground ,black))))
   `(isearch-fail ((t (:background ,reddish :foreground ,black))))
   `(isearch ((t (:background ,greenish :foreground ,black))))

   `(org-document-title ((t (:height 1.7 ,@link-like ,@fmt-bld))))
   `(org-block ((t (,@standout-dull ,@fmt-none))))
   `(org-block-begin-line ((t (,@standout-dull ,@fmt-bld))))
   `(org-block-end-line ((t (,@standout-dull ,@fmt-bld))))
   `(org-level-1 ((t (:height 1.5 :background ,bright-black :foreground ,white ,@fmt-bld))))
   `(org-level-2 ((t (:height 1.4 :background ,bright-black ,@fmt-bld))))
   `(org-level-3 ((t (:height 1.3 :background ,bright-black ,@fmt-bld))))
   `(org-level-4 ((t (:height 1.2 :background ,bright-black ,@fmt-bld))))
   `(org-level-5 ((t (:height 1.1 :background ,bright-black ,@fmt-bld))))
   `(org-level-6 ((t (:height 1.0 :background ,bright-black ,@fmt-bld))))
   `(org-level-7 ((t (:height 1.0 :background ,bright-black ,@fmt-none))))
   `(org-level-8 ((t (:height 1.0 :background ,bright-black :foreground ,dull-white ,@fmt-none))))
   '(company-scrollbar-bg ((t (:background "gray18"))))
   '(company-scrollbar-fg ((t (:background "slate gray"))))
   '(company-tooltip ((t (:background "gray18" :foreground "slate gray"))))
   '(company-tooltip-annotation ((t (:foreground "slate gray"))))
   '(company-tooltip-common ((t (:foreground "medium gray"))))
   '(company-tooltip-selection ((t (:background "black" :foreground "white"))))
   '(helm-M-x-key ((t (:foreground "white" :underline nil))))
   '(helm-buffer-archive ((t (:foreground "white" :underline nil :weight normal))))
   '(helm-buffer-directory ((t (:background "gray18" :foreground "gray" :underline nil :weight normal))))
   '(helm-buffer-file ((t (:foreground "white" :underline nil :weight normal))))
   '(helm-buffer-not-saved ((t (:foreground "gainsboro" :underline nil :weight normal))))
   '(helm-buffer-process ((t (:foreground "gainsboro" :underline nil :weight normal))))
   '(helm-buffer-saved-out ((t (:background "black" :foreground "light gray" :underline nil :weight normal))))
   '(helm-buffer-size ((t (:foreground "gainsboro" :underline nil :weight normal))))
   '(helm-candidate-number ((t (:foreground "dark gray" :underline nil :weight normal))))
   '(helm-ff-directory ((t (:background "black" :foreground "dark gray" :underline nil :weight normal))))
   '(helm-ff-dotted-symlink-directory ((t (:background "DimGray" :foreground "black" :underline nil :weight normal))))
   '(helm-ff-executable ((t (:foreground "white smoke" :underline nil :weight normal))))
   '(helm-ff-file ((t (:foreground "white" :underline nil :weight normal))))
   '(helm-ff-invalid-symlink ((t (:background "gainsboro" :foreground "black" :underline nil :weight normal))))
   '(helm-ff-prefix ((t (:background "gainsboro" :foreground "black" :underline nil :weight normal))))
   '(helm-ff-symlink ((t (:foreground "gainsboro" :underline nil :weight normal))))
   '(helm-header ((t (:underline nil :weight normal))))
   '(helm-header-line-left-margin ((t (:background "black" :foreground "white smoke" :underline nil :weight normal))))
   '(helm-match ((t (:foreground "white" :underline nil :weight normal))))
   '(helm-match-item ((t (:inherit helm-match :underline nil :weight normal))))
   '(helm-prefarg ((t (:foreground "gainsboro" :underline nil :weight normal))))
   '(helm-selection ((t (:background "dim gray" :underline nil :weight normal))))
   '(helm-separator ((t (:foreground "gray" :underline nil :weight normal))))
   '(helm-source-header ((t (:foreground "gainsboro" :underline nil :weight normal :height 1.3 :family "Sans Serif"))))
   '(helm-visible-mark ((t (:foreground "white" :underline nil :weight normal))))
   '(speedbar-button-face ((t (:foreground "dark gray" :underline nil :weight normal))))
   '(speedbar-directory-face ((t (:foreground "gray" :underline nil :weight normal))))
   '(speedbar-file-face ((t (:foreground "gainsboro" :underline nil :weight normal))))
   '(speedbar-highlight-face ((t (:background "black" :foreground "white smoke" :underline nil :weight normal))))
   '(speedbar-selected-face ((t (:background "black" :foreground "white" :underline nil :weight normal))))
   '(magit-section-heading ((t (:background "black" :foreground "white"))))
   )))

(provide-theme 'eltbus)

