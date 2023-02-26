# vim-verible-format

A Vim plugin which use [verible](https://github.com/chipsalliance/verible) to format selected SystemVerilog lines.

## Varibles

`g:verible_format_command`: The command to execute `verible-verilog-format`.

`g:verible_format_arguments`: Add custom arguments to verible-verilog-format for formatting.

`g:verible_path_regex`: A regex expression to process file path. I use it resolve [vscode-neovim#520](https://github.com/vscode-neovim/vscode-neovim/issues/520).

## Commands

`FormatSelection`: Work as its name.
