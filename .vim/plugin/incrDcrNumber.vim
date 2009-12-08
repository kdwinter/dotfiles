"        File: incrDcrNumber.vim
"      Author: Sudipta Ghorui <gsudipta@alumnux.com>
"     Created: 19 Jun 2006
" Last Change: 19 Jun 2006
" Credits:        Romit Charterjee <romit@alumnux.com>
"                for giving me the idea of doning this plugin.
" Description: Increments or decrements the number under the cursor.
"                Press <SHIFT>= i.e + : to increment the number
"                Press <SHIFT>- i.e _ : to decrement the number
"
"               It does nothing when the character under the
"               cursor is not a  number.

" The main function {{{1
function! IncrementNumber(flag)

    let previousPos = line('.').' | normal! '.virtcol('.').'|'
    let lineNo      = line('.')
    let colNo       = col('.')
    let curline     = getline(".")
    let currentChar = strpart(curline, colNo - 1, 3)
    let currAscii   = char2nr(currentChar)

    if currAscii > 47 && currAscii < 58

        let firstPart = strpart(curline, 0, colNo - 1)
        let lastPart  = strpart(curline, colNo)

        if a:flag == 1

            let nextAscii = currAscii + 1
            if nextAscii > 57
                let nextAscii = 48
            endif
        elseif a:flag == 0

            let nextAscii = currAscii - 1
            if nextAscii < 48
                let nextAscii = 57
            endif
        endif

        let nextNum = nr2char(nextAscii)
        let newLine = firstPart . nextNum . lastPart
        call setline(lineNo, newLine)
    endif
endfunction

" Calling portion of the function {{{1
com! -nargs=0 IncrementNumber :call IncrementNumber(1)
com! -nargs=0 DecrementNumber :call IncrementNumber(0)

map + :IncrementNumber<ENTER>
map _ :DecrementNumber<ENTER>

" vim:ts=8 fdm=marker
