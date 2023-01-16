;; Customise for each environment

(defun sort-words (reverse beg end)
  "Sort words in region alphabetically, in REVERSE if negative.
    Prefixed with negative \\[universal-argument], sorts in reverse.

    The variable `sort-fold-case' determines whether alphabetic case
    affects the sort order.

    See `sort-regexp-fields'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\w+" "\\&" beg end))

(cd "/opt/src")

(progn
  (kerscher/lang/lisp)
  (kerscher/lang/docker)
  (kerscher/lang/devops)
  (kerscher/lang/go)
  (kerscher/lang/shell)
  (kerscher/ui/shell/enable)
  (kerscher/writing)
  (kerscher/presentations)
  (kerscher/lang/javascript)
  (kerscher/lang/python)
  (kerscher/lang/nix))

