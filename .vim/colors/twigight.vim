" Vim colortheme: gigamo.vim
" Last Change: 05. February 2009
" License: public domain
" Maintainer: Gigamo <gigamo@gmail.com>
" Credit: twilight.vim - Actually this is twilight.vim made to work with
"         256 color terminals
"
" 256 color terminals or gvim only
" set t_Co=256
"

set background=dark

let python_highlight_all = 1

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "twigight"

" Gui
if version >= 700
  hi CursorLine guibg=#262626
  hi CursorColumn guibg=#262626
  hi MatchParen guifg=white guibg=#80a090 gui=bold
  hi TabLine guifg=black guibg=#b0b8c0 gui=italic
  hi TabLineFill guifg=#9098a0
  hi TabLineSel guifg=black guibg=#f0f0f0 gui=italic,bold
  hi Pmenu guifg=white guibg=#808080
endif
hi Visual guibg=#404040
hi Cursor guibg=#b0d0f0
hi Normal guifg=#f8f8e3 guibg=#202020
hi LineNr guifg=#605958 guibg=#303030 gui=italic
hi Comment guifg=#605958 gui=italic
hi Todo guifg=#808080 guibg=NONE gui=bold,
hi StatusLine guifg=#f0f0f0 guibg=#101010 gui=italic
hi StatusLineNC guifg=#a0a0a0 guibg=#181818 gui=italic
hi VertSplit guifg=#181818 guibg=#181818 gui=italic
hi Folded guibg=#384048 guifg=#a0a8b0 gui=italic
hi FoldColumn guibg=#384048 guifg=#a0a8b0
hi SignColumn guibg=#384048 guifg=#a0a8b0
hi Title guifg=#c05000 gui=bold,underline
hi Constant guifg=#cf6a4c
hi String guifg=#799d6a
hi Special guifg=#99fd8a
hi Identifier guifg=#7587a6
hi Structure guifg=#9B859D gui=underline
hi Function guifg=#dad085
hi Statement guifg=#7187a1 gui=NONE
hi PreProc guifg=#8fbfdc
hi Type guifg=#f9ee98 gui=NONE
hi NonText guifg=#808080 guibg=#303030
hi SpecialKey guifg=#808080 guibg=#343434
hi Search guifg=#a08090 guibg=#302028 gui=underline
hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

if &t_Co > 255
    if version >=700
        hi CursorLine ctermbg=238 cterm=NONE
        hi CursorColumn ctermbg=235
        hi MatchParen ctermfg=255 ctermbg=29 cterm=bold
        hi TabLine ctermfg=232 ctermbg=250 cterm=italic
        hi TabLineFill ctermfg=243
        hi TabLineSel ctermfg=232 ctermbg=254 cterm=italic,bold
        hi Pmenu ctermfg=255 ctermbg=244
    endif
    hi Visual ctermbg=238
    hi Cursor ctermbg=250
    hi Normal ctermfg=254 ctermbg=236
    hi LineNr ctermfg=242 ctermbg=238 cterm=italic
    hi Comment ctermfg=240 cterm=italic
    hi Todo ctermfg=244 ctermbg=NONE cterm=bold
    hi StatusLine ctermfg=254 ctermbg=233 cterm=italic
    hi StatusLineNC ctermfg=247 ctermbg=234 cterm=italic
    hi VertSplit ctermfg=234 ctermbg=234 cterm=italic
    hi Folded ctermfg=238 ctermfg=248 cterm=italic
    hi FoldColumn ctermbg=238 ctermfg=248
    hi SignColumn ctermbg=238 ctermfg=248
    hi Title ctermfg=130 cterm=bold,underline
    " ctermfg=187
    hi Constant ctermfg=130
    " ctermfg=187
    hi String ctermfg=65
    hi Special ctermfg=84
    hi Identifier ctermfg=67
    hi Structure ctermfg=97
    hi Function ctermfg=228
    hi Statement ctermfg=67 cterm=NONE
    hi PreProc ctermfg=74
    hi Type ctermfg=228 cterm=NONE
    hi NonText ctermfg=244 ctermfg=236
    hi SpecialKey ctermfg=244 ctermbg=237
    hi Search ctermfg=138 ctermbg=235 cterm=underline
    hi Directory ctermfg=228 cterm=NONE
    hi Error ctermbg=88
endif
