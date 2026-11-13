;;; Zig

(defun kerscher/zig-format-buffer ()
  "Format the current buffer with zig fmt."
  (kerscher/format-buffer-with-command "zig" "fmt" "--stdin"))

(defun kerscher/zig-mode-hook ()
  (add-hook 'before-save-hook #'kerscher/zig-format-buffer nil t))

(defun kerscher/lang/zig ()
  "Set up Zig tree-sitter mode and Eglot."
  (interactive)
  (require 'treesit)
  (add-to-list 'treesit-language-source-alist
               '(zig "https://github.com/maxxnino/tree-sitter-zig"))
  (with-eval-after-load 'eglot
    (add-to-list 'eglot-server-programs '(zig-ts-mode . ("zls"))))
  (use-package zig-ts-mode
    :mode ("\\.zig\\'" . zig-ts-mode)
    :hook ((zig-ts-mode . kerscher/zig-mode-hook)
           (zig-ts-mode . kerscher/eglot-ensure))))
