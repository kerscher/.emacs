.emacs
======

![BSD 2-Clause license](https://img.shields.io/badge/licence-BSD%202--clause-blue.svg)

![Fancy editor screenshot](editor-of-the-future.png)

## Language modes

The built-in tree-sitter modes require Emacs 31.1 or later with tree-sitter
support. Install the relevant grammars with `M-x treesit-install-language-grammar`
before opening files: Go, Rust, TOML, TypeScript, TSX, YAML, Markdown and
Markdown Inline. `kerscher/lang/go` and `kerscher/lang/rust` use `goimports` and
`rustfmt`, respectively, to format on save; those commands must be on `PATH`.
Markdown preview still depends on the external `markdown-mode` package.

## Licence

This package uses a 2-clause BSD-like licence. You can check it [here](LICENCE.md).
