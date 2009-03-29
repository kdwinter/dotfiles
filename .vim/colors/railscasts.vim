" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.1
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

hi Normal                    guifg=#E6E1DC guibg=#111111
hi NonText                   guifg=#888888 ctermfg=244
hi Cursor                    guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=15	
hi CursorLine                guibg=#000000 ctermbg=236 cterm=NONE
hi CursorColumn              guibg=#262626
hi TabLine                   guifg=black guibg=#b0b8c0 gui=italic
hi TabLineFill               guifg=#9098a0
hi TabLineSel                guifg=black guibg=#f0f0f0 gui=italic,bold
hi Pmenu                     guifg=white guibg=#808080
hi StatusLine                guifg=#f0f0f0 guibg=#444444 gui=italic
hi StatusLineNC              guifg=#a0a0a0 guibg=#333333 gui=italic
hi Folded                    guibg=#384048 guifg=#a0a8b0 gui=italic
hi FoldColumn                guibg=#384048 guifg=#a0a8b0
hi SignColumn                guibg=#384048 guifg=#a0a8b0
hi VertSplit                 guifg=#181818 guibg=#181818 gui=italic
hi Comment                   guifg=#BC9458 ctermfg=180 gui=italic
hi Constant                  guifg=#6D9CBE ctermfg=73
hi Define                    guifg=#CC7833 ctermfg=173
hi Error                     guifg=#FFC66D ctermfg=221 guibg=#990000 ctermbg=88
hi Function                  guifg=#FFC66D ctermfg=221 gui=NONE cterm=NONE
hi Identifier                guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
hi Include                   guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
hi PreCondit                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
hi Keyword                   guifg=#CC7833 ctermfg=173 cterm=NONE
hi LineNr                    guifg=#DDDCDC ctermfg=242 ctermbg=235 guibg=#333333
hi Number                    guifg=#A5C261 ctermfg=107
hi PreProc                   guifg=#E6E1DC ctermfg=103
hi Search                    guifg=NONE ctermfg=NONE guibg=#2b2b2b ctermbg=235 gui=italic cterm=underline
hi Statement                 guifg=#CC7833 ctermfg=173 gui=NONE cterm=NONE
hi String                    guifg=#A5C261 ctermfg=107
hi Title                     guifg=#FFFFFF ctermfg=15
hi Type                      guifg=#DA4939 ctermfg=167 gui=NONE cterm=NONE
hi Visual                    guibg=#5A647E ctermbg=60

hi DiffAdd                   guifg=#E6E1DC ctermfg=7 guibg=#519F50 ctermbg=71
hi DiffDelete                guifg=#E6E1DC ctermfg=7 guibg=#660000 ctermbg=52
hi Special                   guifg=#DA4939 ctermfg=167 

hi pythonBuiltin             guifg=#6D9CBE ctermfg=73 gui=NONE cterm=NONE
hi rubyBlockParameter        guifg=#FFFFFF ctermfg=73
"hi rubyClass                 guifg=#FFFFFF ctermfg=73
hi rubyConstant              guifg=#DA4939 ctermfg=167
hi rubyInstanceVariable      guifg=#D0D0FF ctermfg=73
"hi rubyInterpolation         guifg=#519F50 ctermfg=107
hi rubyLocalVariableOrMethod guifg=#D0D0FF ctermfg=189
hi rubyPredefinedConstant    guifg=#DA4939 ctermfg=167
hi rubyPseudoVariable        guifg=#FFC66D ctermfg=221
hi rubyStringDelimiter       guifg=#A5C261 ctermfg=143

hi xmlTag                    guifg=#E8BF6A ctermfg=179
hi xmlTagName                guifg=#E8BF6A ctermfg=179
hi xmlEndTag                 guifg=#E8BF6A ctermfg=179

hi mailSubject               guifg=#A5C261 ctermfg=107
hi mailHeaderKey             guifg=#FFC66D ctermfg=221
hi mailEmail                 guifg=#A5C261 ctermfg=107 gui=italic cterm=underline

hi SpellBad                  guifg=#D70000 ctermfg=160 ctermbg=NONE cterm=underline
hi SpellRare                 guifg=#D75F87 ctermfg=168 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi SpellCap                  guifg=#D0D0FF ctermfg=189 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi MatchParen                guifg=#FFFFFF ctermfg=15 guibg=#005f5f ctermbg=23
