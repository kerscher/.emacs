;;; writing-tests.el --- Tests for Markdown formatting -*- lexical-binding: t; -*-

(require 'ert)
(load-file (expand-file-name "../source/config/communication/writing.el"
                             (file-name-directory load-file-name)))

(ert-deftest kerscher/changelog-formatting-is-inhibited ()
  (with-temp-buffer
    (setq buffer-file-name "/tmp/CHANGELOG.md")
    (kerscher/markdown/inhibit-format-for-changelogs)
    (should (bound-and-true-p apheleia-inhibit))))

(ert-deftest kerscher/other-markdown-formatting-is-not-inhibited ()
  (with-temp-buffer
    (setq buffer-file-name "/tmp/README.md")
    (kerscher/markdown/inhibit-format-for-changelogs)
    (should-not (bound-and-true-p apheleia-inhibit))))
