" Name: tyra.vim
" Maintainer: Gigamo <gigamo@gmail.com>
" Last Change: February 23, 2009 (19:38)
" License: WTFPL <http://sam.zoy.org/wtfpl/>
" Version: 0.1

set background=dark
hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name = 'tyra'

" General colors
"                       Background      Foreground      Options
hi Normal               guibg=#676767   guifg=#FFFFFF   gui=none
hi Cursor               guibg=#888888
hi CursorLine           guibg=#353637                   gui=none
hi CursorColumn         guibg=#353637                   gui=none
hi Visual               guibg=#5A647E
hi LineNr               guibg=#444444   guifg=#888888
hi StatusLine           guibg=#131313                   gui=none
hi StatusLineNC         guibg=#262626                   gui=none
hi Comment                              guifg=#BC9458   gui=none
hi Todo                                 guifg=#DDDCDC   gui=underline
hi VertSplit            guibg=#262626
hi Folded               guibg=#353637   guifg=#DDDCDC
hi FoldColumn           guibg=#353637   guifg=#DDDCDC
hi SignColumn           guibg=#353637   guifg=#DDDCDC
hi Title                                guifg=#DDDCDC   gui=none
hi Constant                             guifg=#6D9CBE
hi String                               guifg=#B4CB72
hi Special                              guifg=#519F50
hi Identifier                           guifg=#FFC66D
hi Structure                            guifg=#FFC66D
hi Function                             guifg=#FFC66D
hi Statement                            guifg=#D98388   gui=none
hi PreProc                              guifg=#D98388
hi Type                                 guifg=#FFD07D
hi NonText              guibg=#353637   guifg=#DDDCDC
hi Search               guibg=#302028   guibg=#A08090   gui=underline
hi Directory                            guibg=#FFC66D
hi Error                guibg=#990000   guifg=#FFFFFF
hi Boolean                              guifg=#FF5F5F

" Ruby specific colors
hi rubyInstanceVariable                 guifg=#D0D0AA
hi rubySymbol                           guifg=#6D9CBE

" HyperTextMarkupLanguage specific colors
hi htmlTagName                          guifg=#FFC66D
hi htmlTag                              guifg=#FFE2AC
hi htmlEndTag                           guifg=#FFE2AC
hi htmlSpecialTagName                   guifg=#FFC66D
hi javaScript                           guifg=#6D9CBE
hi htmlCssDefinition                    guifg=#FFE2AC
hi htmlSpecialChar                      guifg=#FFE2AC

" 256 color terminal
"                           Background      Foreground      Options
if &t_Co > 255
    hi Normal               ctermbg=236     ctermfg=255     cterm=none
    hi Cursor               ctermbg=245
    hi CursorLine           ctermbg=237                     cterm=none
    hi CursorColumn         ctermbg=237                     cterm=none
    hi Visual               ctermbg=75
    hi LineNr               ctermbg=238     ctermfg=245
    hi StatusLine           ctermbg=238                     cterm=none
    hi StatusLineNC         ctermbg=235                     cterm=none
    hi Comment                              ctermfg=179     cterm=italic
    hi Todo                                 ctermfg=252     cterm=underline
    hi VertSplit            ctermbg=235
    hi Folded               ctermbg=237     ctermfg=252
    hi FoldColumn           ctermbg=237     ctermfg=252
    hi SignColumn           ctermbg=237     ctermfg=252
    hi Title                                ctermfg=252     cterm=none
    hi Constant                             ctermfg=74
    hi String                               ctermfg=107
    hi Special                              ctermfg=35
    hi Identifier                           ctermfg=73
    hi Structure                            ctermfg=73
    hi Function                             ctermfg=221
    hi Statement                            ctermfg=172
    hi PreProc                              ctermfg=172
    hi Type                                 ctermfg=228
    hi NonText              ctermbg=237     ctermfg=252
    hi Search               ctermbg=235     ctermfg=138
    hi Directory                            ctermfg=73
    hi Error                ctermbg=160     ctermfg=255
    hi Boolean                              ctermfg=203
    hi rubyInstanceVariable                 ctermfg=152
    hi rubyGlobalVariable                   ctermfg=152
    hi rubyClassVariable                    ctermfg=152
    hi rubySymbol                           ctermfg=74
    hi htmlTagName                          ctermfg=221
    hi htmlTag                              ctermfg=231
    hi htmlEndTag                           ctermfg=231
    hi htmlSpecialTagName                   ctermfg=221
    hi javaScript                           ctermfg=74
    hi htmlCssDefinition                    ctermfg=231
    hi htmlSpecialChar                      ctermfg=231
end
