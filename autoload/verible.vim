function! verible#init()
    if !exists('g:verible_format_command')
        let g:verible_format_command = 'verible-verilog-format'
    endif
    if !exists('g:verible_format_arguments')
        let g:verible_format_arguments = ''
    endif
    command FormatSelection call <SID>formatSelection()
endfunction

function! s:formatSelection() abort
    let first_line = getpos("'<'")[1]
    let last_line = getpos("'>'")[1]
    let path = expand('%:p')
    if exists('g:verible_path_regex')
        let path = substitute(path,g:verible_path_regex,'','')
    endif
    let cmd = g:verible_format_command . ' --inplace ' . "'" . path . "'" . ' --lines=' . first_line . '-' . last_line . ' ' . g:verible_format_arguments
    echo cmd
    call system(cmd)
endfunction
