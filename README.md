.emacs
======

![BSD 2-Clause license](https://img.shields.io/badge/licence-BSD%202--clause-blue.svg)

![Fancy editor screenshot](editor-of-the-future.png)

## Language modes

The built-in tree-sitter modes require Emacs 31.1 or later with tree-sitter
support. Install the relevant grammars with `M-x treesit-install-language-grammar`
before opening files: Go, Rust, TOML, TypeScript, TSX, YAML, Markdown and
Markdown Inline. If a grammar is not listed, load its mode first with
`M-: (require 'MODE)` (for example, `(require 'toml-ts-mode)`) to register its
source. When Apheleia is enabled, Go and Rust formatting uses `goimports` and
`rustfmt`, respectively; those commands must be on `PATH`.
Markdown preview still depends on the external `markdown-mode` package.

C files use `c-ts-mode` and Eglot with `clangd`; install the C tree-sitter
grammar and put `clangd` on `PATH`. A project's `compile_commands.json` helps
clangd find the correct include paths and compiler options.

Run `M-x kerscher/lang/zig` to set up `zig-ts-mode`, then install its `zig`
tree-sitter grammar with `M-x treesit-install-language-grammar`. Zig files use
Eglot with `zls`; when Apheleia is enabled, they are formatted on save with
`zig fmt`. Both executables must be on `PATH`.

## Licence

This package uses a 2-clause BSD-like licence. You can check it [here](LICENCE.md).
