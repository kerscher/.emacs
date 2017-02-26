;; IRC

(use-package erc
  :ensure t
  :config
  (customize-set-variable 'erc-hide-list (quote ("JOIN" "PART" "QUIT")))
  (customize-set-variable 'erc-nick "yyyyy"))
