# vim-verible-format

A Vim plugin which use [verible](https://github.com/chipsalliance/verible) to format selected SystemVerilog lines.

## Varibles

`g:verible_format_command`: The command to execute `verible-verilog-format`.

`g:verible_format_arguments`: Add custom arguments to verible-verilog-format for formatting.

`g:verible_path_regex`: A regex expression to process file path. I draw on it resolve [vscode-neovim#520](https://github.com/vscode-neovim/vscode-neovim/issues/520).

## Commands

`FormatSelection`: Works as its name suggests.

## Keybindings

No default key bindings provided. Since selected lines can only be obtained after exiting visual mode, you can add a `<Esc>` preceding the command call as shown below:

```
vnoremap <Leader>f <Esc>:FormatSelection<CR>
```
