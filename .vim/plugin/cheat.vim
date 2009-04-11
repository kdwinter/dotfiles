" cheat.vim
"
" Vim wrapper for cheat (http://cheat.errtheblog.com) utility.
" Feedback is more than welcome :-)
"
" Last Change:  Wed Jun  4 08:52:11 EEST 2008
" Maintainer:   Alexandru Ungur <alexandru@globalterrasoft.ro>
" License:      This file is placed in the public domain.
" Version:      1.2
" Changelog:    v1.2 (Jun 4, 2008)
"               * added CheatRecent command to get a list of recent cheatsheets
"               * thanks to Ferry Boender for the code for dumping output of
"                 commands into a window (Bexec - script #1788) now Cheat dumps
"                 its output into a window as well, and no longer to 'stdout'
" TODO:         Add user configurable option for clearing output buffer vs.
"               appending (as it does now)

if exists('g:loaded_cheats')
    echo "cheat.vim already loaded! won't reload."
    finish
endif

" Set the path to the cheat sheets cache file, can be overriden from
" .vimrc with:
"               let g:cheats_cache = "/path/to/your/cache/file"
let s:cheats_cache = exists('g:cheats_cache') ? g:cheats_cache : $HOME . '/.cheats'

" Set the split direction for the output buffer.
" It can be overriden from .vimrc as well, by setting g:cheats_split to hor | ver
let s:cheats_split = exists('g:cheats_split') ? g:cheats_split : "hor"

" Constants
let s:splitCmdMap = {"ver":"vsp", "hor":"sp"}

" Get/Create the cheat sheets list
if !filereadable(s:cheats_cache)
    echo "Cheat: cheats cache file `" s:cheats_cache "'not found. Creating it..."
    execute system("ruby -e 'print IO.popen(\"cheat sheets\") { |io| io.readlines[1..-1].map{|line| line.strip}.join(\"\n\") }' > " . s:cheats_cache)
endif
let s:cheat_sheets = join(readfile(s:cheats_cache), "\n")

" Func Defs
func! FindOrCreateOutWin(bufName)
    let l:outWinNr = bufwinnr(a:bufName)
    let l:outBufNr = bufnr(a:bufName)

    " Find or create a window for the bufName
    if l:outWinNr == -1
        " Create a new window
        exec s:splitCmdMap[s:cheats_split]

        let l:outWinNr = bufwinnr("%")
        if l:outBufNr != -1
            " The buffer already exists. Open it here.
            exec 'b'.l:outBufNr
        endif
        " Jump back to the previous window the user was editing in.
        exec 'wincmd p'
    endif

    " Find the buffer number or create one for bufName
    if l:outBufNr == -1
        " Jump to the output window
        exec l:outWinNr.' wincmd w'
        " Open a new output buffer
        exec 'e '.a:bufName
        setlocal noswapfile
        setlocal buftype=nofile
        setlocal wrap
        let l:outBufNr = bufnr("%")
        " Jump back to the previous window the user was editing in.
        exec 'wincmd p'
    endif
        
    return l:outBufNr
endf

func! RunAndRedirectOut(cmd, bufName)
    " Change to the output buffer window
    let l:outWinNr = bufwinnr(a:bufName)
    exec l:outWinNr.' wincmd w'

    " Build the final (vim) command we're gonna run 
    let l:runCmd = "r! ".a:cmd

    " Run it
    norm G
    let l:curpos = getpos(".") " Save cursor position for scrolling later on
    silent! exec l:runCmd

    norm gg
endf

func! CheatCompletion(ArgLead, CmdLine, CursorPos)
    return s:cheat_sheets
endf

func! Cheat(c)
    let l:c = strlen(a:c) ? a:c : input("Cheat Sheet: ", "", "custom,CheatCompletion")
    let l:outBuf = FindOrCreateOutWin("-cheat_output-")
    call RunAndRedirectOut('cheat ' . l:c, l:outBuf)
endf

func! CheatCurrent()
    call Cheat(expand("<cword>"))
endf
  
" Commands Mappings
comm! -nargs=1 -complete=custom,CheatCompletion Cheat :call Cheat(<q-args>)
comm! CheatCurrent :call CheatCurrent()
comm! CheatRecent :call Cheat("recent")
nmap <leader>C  :call Cheat("")<CR>

" Ask for cheatsheet for the word under cursor
nmap <leader>ch :call CheatCurrent()<CR>
vmap <leader>ch <ESC>:call CheatCurrent()<CR>

let g:loaded_cheats = "1.3"
