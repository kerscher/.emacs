;;; formatter-tests.el --- Tests for language formatters -*- lexical-binding: t; -*-

(require 'ert)

;; Load the formatter without installing the optional development packages.
(defmacro use-package (&rest _args))
(load-file (expand-file-name "../source/config/development/common.el"
                             (file-name-directory load-file-name)))

(ert-deftest kerscher/formatter-replaces-buffer-on-success ()
  (with-temp-buffer
    (insert "hello\n")
    (kerscher/format-buffer-with-command "tr" "a-z" "A-Z")
    (should (equal (buffer-string) "HELLO\n"))))

(ert-deftest kerscher/formatter-preserves-buffer-on-failure ()
  (with-temp-buffer
    (insert "original\n")
    (should-error
     (kerscher/format-buffer-with-command
      "sh" "-c" "echo broken >&2; echo partial; exit 1"))
    (should (equal (buffer-string) "original\n"))))

(ert-deftest kerscher/formatter-fails-when-command-is-missing ()
  (with-temp-buffer
    (insert "original\n")
    (should-error (kerscher/format-buffer-with-command
                   "kerscher-missing-formatter-command"))
    (should (equal (buffer-string) "original\n"))))
