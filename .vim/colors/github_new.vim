" -----------------------------------------------------------------------------
" A color scheme with the visual of new Github syntax coloring.
"
" The great work of endel (https://github.com/endel/vim-github-colorscheme)
" mimics the old visual.
"
" Note: Color codes got with http://www.vim.org/scripts/script.php?script_id=1349
" Author: @viniciusban
" -----------------------------------------------------------------------------


if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "github_new"
set t_Co=256
set background=light
hi clear

" Color definitions
let s:CURSOR    = {"gui": "#00FF00", "cterm": "lightgreen"}
let s:WHITE     = {"gui": "#FFFFFF", "cterm": "231"}
let s:BLACK     = {"gui": "#000000", "cterm": "black"}
let s:GRAY      = {"gui": "#9E9E9E", "cterm": "grey"}
let s:DGRAY     = {"gui": "#626262", "cterm": "darkgray"}
let s:LGRAY     = {"gui": "#DADADA", "cterm": "lightgray"}
let s:MAGENTA   = {"gui": "#AF005F", "cterm": "magenta"}
let s:DMAGENTA  = {"gui": "#5F0087", "cterm": "darkmagenta"}
let s:LMAGENTA  = {"gui": "#DF87FF", "cterm": "lightmagenta"}
let s:CYAN      = {"gui": "#0087AF", "cterm": "darkcyan"}
let s:LCYAN     = {"gui": "#D7FFFF", "cterm": "195"}
let s:BLUE      = {"gui": "#0000AF", "cterm": "darkblue"}
let s:MBLUE     = {"gui": "#5FD7FF", "cterm": "blue"}
let s:LBLUE     = {"gui": "#AFD7FF", "cterm": "lightblue"}
let s:GREEN     = {"gui": "#00AF00", "cterm": "green"}
let s:DGREEN    = {"gui": "#00AF00", "cterm": "darkgreen"}
let s:LGREEN    = {"gui": "#D7FFD7", "cterm": "lightgreen"}
let s:YELLOW    = {"gui": "#FFFFAF", "cterm": "yellow"}
let s:LYELLOW   = {"gui": "#FFFFAF", "cterm": "lightyellow"}
let s:ORANGE    = {"gui": "#FF8700", "cterm": "208"}
let s:RED       = {"gui": "#D70000", "cterm": "red"}
let s:DRED      = {"gui": "#840002", "cterm": "darkred"}
let s:LRED      = {"gui": "#AF0000", "cterm": "lightred"}

let s:BG        = {"gui": s:WHITE["gui"], "cterm": s:WHITE["cterm"]}
let s:I         = {"gui": "italic",  "cterm": "none"}

if (has('gui_running'))
    let s:M = "gui"
else
    let s:M = "cterm"
endif

" Highlight groups
" exe "hi MatchParen   " .s:M. "fg=" .s:BLUE[s:M].                                        " " .s:M. "=none"
exe "hi Normal       " .s:M. "fg=" .s:DGRAY[s:M].     " " .s:M. "bg=" .s:BG[s:M].       " " .s:M. "=none"
exe "hi NonText      " .s:M. "fg=" .s:DGRAY[s:M].                                       " " .s:M. "=none"
exe "hi Ignore       " .s:M. "fg=" .s:DGRAY[s:M].                                       " " .s:M. "=none"
exe "hi DiffAdd      " .s:M. "fg=" .s:DGREEN[s:M].    " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi DiffDelete   " .s:M. "fg=" .s:RED[s:M].       " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi DiffChange   " .s:M. "fg=" .s:ORANGE[s:M].    " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi DiffText     " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:ORANGE[s:M].   " " .s:M. "=none"
exe "hi ModeMsg      " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:LGRAY[s:M].    " " .s:M. "=none"
exe "hi MoreMsg      " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:DGREEN[s:M].   " " .s:M. "=none"
exe "hi Title        " .s:M. "fg=" .s:BLUE[s:M].                                        " " .s:M. "=none"
exe "hi WarningMsg   " .s:M. "fg=" .s:RED[s:M].                                         " " .s:M. "=none"
exe "hi SpecialKey   " .s:M. "fg=" .s:BLUE[s:M].                                        " " .s:M. "=none"
exe "hi Underlined   " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=underline"
exe "hi Directory    " .s:M. "fg=" .s:MAGENTA[s:M].                                     " " .s:M. "=none"
exe "hi Visual       "                                    .s:M. "bg=" .s:LBLUE[s:M].    " " .s:M. "=none"
exe "hi VisualNOS    "                                    .s:M. "bg=" .s:LBLUE[s:M].    " " .s:M. "=none"
exe "hi Search       " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:YELLOW[s:M].   " " .s:M. "=none"
exe "hi IncSearch    " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:YELLOW[s:M].   " " .s:M. "=bold"
exe "hi CursorLine   "                                    .s:M. "bg=" .s:LCYAN[s:M].    " " .s:M. "=none"
exe "hi CursorColumn "                                    .s:M. "bg=" .s:LCYAN[s:M].    " " .s:M. "=none"
exe "hi TabLine      " .s:M. "fg=" .s:LBLUE[s:M].     " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi TabLineFill  " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi TabLineSel   " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:LBLUE[s:M].    " " .s:M. "=none"
exe "hi StatusLine   " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:LBLUE[s:M].    " " .s:M. "=none"
exe "hi StatusLineNC " .s:M. "fg=" .s:LBLUE[s:M].     " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=underline"
exe "hi Boolean      " .s:M. "fg=" .s:BLUE[s:M].                                        " " .s:M. "=none"
exe "hi Class        " .s:M. "fg=" .s:DRED[s:M].                                        " " .s:M. "=bold"
exe "hi Comment      " .s:M. "fg=" .s:GRAY[s:M].                                        " " .s:M. "=" .s:I[s:M]
exe "hi Constant     " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi Error        " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:RED[s:M].      " " .s:M. "=none"
exe "hi Function     " .s:M. "fg=" .s:DRED[s:M].                                        " " .s:M. "=bold"
exe "hi Identifier   " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=none"
exe "hi Include      " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi Number       " .s:M. "fg=" .s:BLUE[s:M].                                        " " .s:M. "=none"
exe "hi Operator     " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=none"
exe "hi PreProc      " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi Question     " .s:M. "fg=" .s:GREEN[s:M].                                       " " .s:M. "=bold"
exe "hi Special      " .s:M. "fg=" .s:DGREEN[s:M].                                      " " .s:M. "=none"
exe "hi Statement    " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=none"
exe "hi String       " .s:M. "fg=" .s:RED[s:M].                                         " " .s:M. "=none"
exe "hi Todo         " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:LGREEN[s:M].   " " .s:M. "=bold"
exe "hi Folded       " .s:M. "fg=" .s:GRAY[s:M].      " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi FoldColumn   " .s:M. "fg=" .s:GRAY[s:M].      " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi LineNr       " .s:M. "fg=" .s:GRAY[s:M].                                        " " .s:M. "=none"
exe "hi Label        " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi CursorLineNr " .s:M. "fg=" .s:DGRAY[s:M].                                       " " .s:M. "=none"
exe "hi htmlTagN     "                                                                      .s:M. "=bold"
exe "hi StorageClass " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi Structure    " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi TypeDef      " .s:M. "fg=" .s:BLACK[s:M].                                       " " .s:M. "=bold"
exe "hi Type         " .s:M. "fg=" .s:DMAGENTA[s:M].                                    " " .s:M. "=none"
exe "hi WildMenu     " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:LCYAN[s:M].    " " .s:M. "=none"
exe "hi Menu         " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:DGRAY[s:M].    " " .s:M. "=bold"
exe "hi PmenuSel     " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:LCYAN[s:M]
exe "hi PmenuSbar    " .s:M. "fg=" .s:DGRAY[s:M].     " " .s:M. "bg=" .s:BLACK[s:M].    " " .s:M. "=none"
exe "hi PmenuThumb   " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:DGRAY[s:M].    " " .s:M. "=none"
exe "hi SignColumn   " .s:M. "fg=" .s:DGRAY[s:M].     " " .s:M. "bg=" .s:WHITE[s:M].    " " .s:M. "=none"
exe "hi Cursor       " .s:M. "fg=" .s:BLACK[s:M].     " " .s:M. "bg=" .s:CURSOR[s:M].   " " .s:M. "=none"
exe "hi ColorColumn  " .s:M. "fg=" .s:WHITE[s:M].     " " .s:M. "bg=" .s:MAGENTA[s:M].  " " .s:M. "=none"
exe "hi VertSplit    " .s:M. "fg=" .s:DGRAY[s:M].     " " .s:M. "bg=" .s:LGRAY[s:M].    " " .s:M. "=none"
