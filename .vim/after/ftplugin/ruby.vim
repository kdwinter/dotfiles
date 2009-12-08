" add global path to search path
let &l:path = &g:path . &l:path

" abbreviations to add end to blocks and what not
iab <buffer> def def<CR>end<Up><C-o>$
" iab <buffer> do do<CR>end<Up><C-o>$
" iab <buffer> class class<CR>end<Up><C-o>$
iab <buffer> module module<CR>end<Up><C-o>$
" iab <buffer> for for<CR>end<Up><C-o>$
