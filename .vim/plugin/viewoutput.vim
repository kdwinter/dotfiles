" viewoutput.vim Version 2.0
" Description: use ':VO cmd' to view output of vim command in new buffer
" Author: Yakov Lerner
" Thanks to: Antony Scriven, Charles Campbell

if exists("loaded_viewoutput") | finish | endif
let loaded_viewoutput=1

let g:viewoutput_newbuffer="bot 10new"
"   g:viewoutput_newbuffer -- command to create new preview window 
"let g:viewoutput_newbuffer="5new"     | " create preview window 5 lines high
"let g:viewoutput_newbuffer="bot 5new" | " bottom preview window 5 lines high
"let g:viewoutput_newbuffer="top 5new" | " top preview window 5 lines high

function! ViewOutput(cmd)
    let save_reg=@a
    redir @a
    silent exec a:cmd
    redir END
    if strlen(substitute(@a, "[^\n]", "", "g")) < 4
        " fix for 'silent map' bug which produces output without newlines
        let save_more=&more
        set nomore
        redir @a
        exec a:cmd
        redir END
        let &more = save_more
    endif
    exec g:viewoutput_newbuffer
    put a
    1,2g/^$/d
    0 put = 'Command: ' . a:cmd
    setf vim
    set bufhidden=hide noswapfile noro nomodified
    " set buftype=nofile
    let @a=save_reg
endfunction

" VO - view output of vim command in new buffer
command! -narg=+ VO :call ViewOutput(<q-args>)
