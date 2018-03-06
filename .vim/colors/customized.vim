color file
hi clear
if version > 580
hi clear
if exists("syntax_on")
syntax reset
endif
endif
let g:colors_name="customized"

hi Normal       ctermfg=231 ctermbg=none
hi CursorLine   cterm=none
hi CursorLineNr ctermfg=9 ctermbg=none	cterm=bold
hi Boolean         ctermfg=9
hi Character       ctermfg=9
hi Number          ctermfg=9
hi String          ctermfg=9
hi Conditional     ctermfg=2           cterm=none
hi Constant        ctermfg=9           cterm=none
"hi Cursor          ctermfg=16  ctermbg=253
hi Debug           ctermfg=225               cterm=none
hi Define          ctermfg=9
hi Delimiter       ctermfg=2
hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText		ctermbg=102 cterm=none
hi Directory       ctermfg=1	cterm=none
hi Error           ctermfg=9 ctermbg=none
hi ErrorMsg        ctermfg=9 ctermbg=none    cterm=none
hi Exception       ctermfg=2               cterm=none
hi Float           ctermfg=9
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function	ctermfg=9
hi Identifier	ctermfg=9               cterm=none
hi Ignore	ctermfg=244	ctermbg=232
hi IncSearch       ctermfg=231	ctermbg=2	cterm=none
hi keyword         ctermfg=2               cterm=none
hi Label           ctermfg=9               cterm=none
hi Macro           ctermfg=193
hi SpecialKey      ctermfg=2
hi MatchParen      ctermfg=9  ctermbg=none cterm=bold
hi ModeMsg         ctermfg=9
hi MoreMsg         ctermfg=9
hi Operator        ctermfg=9

" complete menu
hi Pmenu           ctermfg=118  ctermbg=none
hi PmenuSel        ctermfg=none ctermbg=9
hi PmenuSbar                   ctermbg=231
hi PmenuThumb      ctermfg=2
hi PreCondit       ctermfg=2               cterm=none
hi PreProc         ctermfg=2
hi Question        ctermfg=81
hi Repeat          ctermfg=9               cterm=none
hi Search          ctermfg=231   ctermbg=9   cterm=NONE

hi SignColumn      ctermfg=2 ctermbg=none
hi SpecialChar     ctermfg=9               cterm=none
hi SpecialComment  ctermfg=118               cterm=none
hi Special         ctermfg=9
hi SpellBad        ctermbg=52
hi SpellCap        ctermbg=17
hi SpellLocal      ctermbg=17
hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
hi Statement       ctermfg=2               cterm=none
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=9
hi Structure       ctermfg=2
hi Tag             ctermfg=9
hi Title           ctermfg=2
hi Todo            ctermfg=231 ctermbg=232   cterm=none
hi Typedef         ctermfg=2
hi Type            ctermfg=2                cterm=none
hi Underlined      ctermfg=244               cterm=underline
hi VertSplit       ctermfg=2 ctermbg=2   cterm=none
hi VisualNOS                   ctermbg=8
hi Visual                      ctermbg=8
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=none
hi WildMenu        ctermfg=81  ctermbg=16
hi Comment         ctermfg=118
hi CursorColumn                ctermbg=236
hi ColorColumn                 ctermbg=236
hi LineNr          ctermfg=none ctermbg=8 cterm=bold
hi NonText         ctermfg=231
hi SpecialKey      ctermfg=9

