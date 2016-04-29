set nocompatible   " use gVim defaults
set encoding=utf-8 " unicode encoding
set laststatus=2
syntax on          " enable syntax highlighting

if v:version >= 700
  set cursorline
endif

set clipboard+=unnamedplus

if has('gui_running')
  "set background=light
  winpos 0 0
  set guicursor=a:blinkon0 " disable cursor blinking
  set guitablabel=%t\ %m
  "set guioptions=tmaegr
  "set guioptions=gemc
  set guioptions=gec
  set columns=100
  set lines=55
  if has('win32')
    set guifont=DejaVu_Sans_Mono:h8:cANSI
  elseif has('mac')
    set anti
    set guifont=Ubuntu\ Mono:h12
    "set transparency=10

    " fix clipboard on osx
    set clipboard+=unnamed
  else
    "set guifont=Fixedsys\ Excelsior\ 3.01\ 9
    "set guifont=CMU\ Typewriter\ Text\ 8
    "set guifont=Fira\ Mono\ 7
    "set guifont=PragmataPro\ 7
    set guifont=Inconsolata\ 10.3
    "set guifont=Liberation\ Mono\ 9
    "set guifont=limey\ 8
    "set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 9
    "set guifont=Fantasque\ Sans\ Mono\ 9
    "set guifont=Courier\ Prime\ Code\ 9
    "set guifont=Source\ Code\ Pro\ 8
    "set guifont=Tamsyn\ 10
    "set guifont=Terminus\ 8
    "set guifont=Gohufont\ 8
    "set guifont=Dina\ 6
    "set guifont=neep\ alt\ medium\ 8
    "set guifont=Ubuntu\ Mono \8
    "set guifont=Courier\ New\ 9
    set noanti
  endif
"elseif (&term =~ 'screen' || &term =~ 'linux')
elseif (&term =~ 'linux')
  set background=dark
  set t_Co=16
  set termencoding=utf-8
  set nocursorline
  colo desert
else
  set background=dark
  "set background=light
  set t_Co=256
  "colo distinguished
  "colo desert
  "colo vimbrant
  "let g:solarized_termcolors=256
  "let g:onedark_termcolors=256
  "colo tomorrownight
  "colo twilight2
  "colo landscape
  set mouse=a
  set termencoding=utf-8
  "colo smyck
  "colo gotham
  colo gruvbox
  "colo darktooth
  "colo badwolf
  "colo sunburst2
  "colo PaperColor-Dark
  "colo solarized
  "colo onedark
  "colo github
endif

set listchars=eol:¬,trail:…
set expandtab           " expand tabs to spaces
set nosmarttab          " fuck tabs
set nolazyredraw        " turn off lazy redraw
set mat=5               " duration to show matching brace
set autoread            " reload files automagically
set viminfo='1000,f1,:100,@100,/20
set shm=atI             " disable intro screen
set nospell             " no spell checking
set ul=150              " only undo up to 150 times
set lz                  " don't redraw screen during macros
set tf                  " improves redrawing for newer computers
set sc                  " show incomplete command at bottom right
set bs=2                " allow backspacing over anything
set ic scs              " only be case sensitive when search contains uppercase
set sb                  " open new split windows below current
set hid                 " allow hidden buffers
set tm=500              " lower timeout for mappings
set cot=menu            " don't show extra info on completions
set report=0            " always report when lines are changed
set shell=/bin/zsh      " set default shell
set vb                  " don't beep
set t_vb=               " ^
set nofoldenable        " dont autofold
"set foldmethod=indent   " marks foldstarts/ends with {{{ }}}
set foldmethod=syntax
set foldlevel=1
set foldnestmax=10
set tabstop=2           " a n-space tab width
set shiftwidth=2        " allows the use of < and > for VISUAL indenting
set softtabstop=2       " counts n spaces when DELETE or BCKSPCE is used
set textwidth=78        " in new gvim windows
set autoindent          " auto indents next new line
set smartindent         " intelligent indenting -- DEPRECATED by cindent
set nohlsearch          " highlight no search results
set incsearch           " increment search
set smartcase           " upper-case sensitive search
set backspace=indent,eol,start
set history=1000        " 1000 lines of command line history
set cmdheight=1         " command line height
set ruler               " ruler display in status line
set showmode            " show mode at bottom of screen
"set relativenumber      " show line numbers relative to current line
set number              " show line numbers
set nobackup            " dont keep backups after close
set writebackup         " do keep one while working
set backupdir=$HOME/.vim/backup/,/tmp
set backupcopy=yes
set directory=$HOME/.vim/backup/,/tmp
set noswapfile          " disable swapfiles
set showmatch           " show matching brackets (),{},[]
set whichwrap=h,l,<,>,[,]
set showcmd
set modeline
set wildmenu
set splitbelow
set formatoptions+=l
set selection=inclusive
set autowrite
set cinoptions=g0,:0,l1,(0,t0
set shortmess=at
set complete=.,t,i,b,w,k
set wildchar=<tab>
set wildmenu
set wildmode=longest:full,full
set previewheight=5
set joinspaces
set magic
set suffixes=.bak,~,.o,.info,.log,.rbx,.swp
set title
filetype plugin indent on      " fix the f*cking indenting
set scrolloff=8                " start scrolling at 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"function! IsHelp()
"  return &buftype=='help'?' (help) ':''
"endfunction
"
"function! GetName()
"  return expand("%:t")==''?'<none>':expand("%:t")
"endfunction

"set statusline=%3*[%1*%{GetName()}%3*]%3*
"set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
"set statusline+=%5*%{IsHelp()}%3*
"set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
"set statusline+=%3*enc:%4*%{strlen(&fenc)?&fenc:'none'}%3*\ \
"set statusline+=%3*ff:%4*%{&ff}%3*\ \
"set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ \
""set statusline+=%3*tab:%4*%{&ts}
""set statusline+=%3*,%4*%{&sts}
""set statusline+=%3*,%4*%{&sw}
""set statusline+=%3*,%4*%{&et?'et':'noet'}\ \
"set statusline+=%<%3*pwd:%4*%{getcwd()}\ \
"set statusline+=%9*%=
"set statusline+=%3*col:%4*%c\ \
"set statusline+=%3*line:%4*%l\ \
"set statusline+=%3*total:%4*%L\

" common save shortcuts
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>

" sane movement with wrap turned on
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" do not menu with left / right in command line
cnoremap <Left> <Space><BS><Left>
cnoremap <Right> <Space><BS><Right>

" tab key in visual mode
vmap <tab> >gv
vmap <S-tab> <gv
"vmap <bs> <gv

" Change leader
let mapleader=','

map <leader>d :e %:h/<CR>
map <leader>dt :tabe %:h/<CR>

" Set taglist plugin options
let g:Tlist_Display_Prototype = 1
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Compact_Format = 0
let g:Tlist_File_Fold_Auto_Close = 0
let g:Tlist_Sort_Type = 'name'
let g:Tlist_Enable_Fold_Column = 0
map <F1> :Tlist<CR>

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Rails
let g:rails_subversion = 1
let g:rails_menu = 2

" NERDTree
let g:NERDTreeHijackNetrw = 1
""let NERDTreeMouseMode=1
let g:NERDChristmasTree = 1
map <F3> :NERDTreeToggle<CR>

" Git
let git_diff_spawn_mode=2

" Airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme = "gruvbox"
"let g:airline_theme = "solarized"
let g:airline_theme = "PaperColor"
let g:airline_powerline_fonts = 0
" comment these if powerline fonts are enabled..
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = ' '
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode'])
  let g:airline_section_b = airline#section#create_left(['%f'])
  let g:airline_section_c = airline#section#create(['filetype'])
  let g:airline_section_x = airline#section#create(['%P'])
  let g:airline_section_y = airline#section#create(['ffenc'])
  let g:airline_section_z = airline#section#create_right(['%l', '%c'])
endfunction

let g:gruvbox_contrast_dark = "hard"


if has('autocmd')
  au WinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline

  hi ExtraWhitespace ctermbg=red guibg=red
  au ColorScheme * hi ExtraWhitespace ctermbg=red guibg=red
  match ExtraWhitespace /\s\+$\| \+\ze\t/

  if exists("&colorcolumn")
    au Insertenter * set colorcolumn=81
    au InsertLeave * set colorcolumn=""
  endif

  " Fix filetype detection
  au BufNewFile,BufRead *.inc set filetype=php
  au BufNewFile,BufRead *.sys set filetype=php
  au BufNewFile,BufRead grub.conf set filetype=grub
  au BufNewFile,BufRead *.blog set filetype=blog

  " C file specific options
  au FileType c,cpp set cindent
  au FileType c,cpp set formatoptions+=ro
  au FileType make  setlocal noexpandtab ts=8

  " Ruby file specific options
  au Filetype ruby set textwidth=80 ts=2
  au Filetype haml set ts=2 sw=2 sts=0 expandtab tw=120

  au BufRead,BufNewFile *.rpdf set ft=ruby
  au BufRead,BufNewFile *.rxls set ft=ruby
  au BufRead,BufNewFile *.ru set ft=ruby
  au BufRead,BufNewFile *.god set ft=ruby
  au BufRead,BufNewFile *.rtxt set ft=html
  au BufRead,BufNewFile *.rl set ft=ragel
  au BufRead,BufNewFile *.haml set ft=haml
  au BufRead,BufNewFile *.mustache set ft=mustache
  au BufRead,BufNewFile *.ron set ft=mkd tw=65 ts=2 sw=2 expandtab

  " Others..
  au FileType javascript setlocal nocindent
  au BufRead,BufNewFile *.es6 set ft=javascript

  au BufRead,BufNewFile *.sql set ft=pgsql
  au BufRead,BufNewFile *.svg set ft=svg

  au BufRead,BufNewFile *.vimp set ft=vimperator

  au BufRead,BufNewFile *.md set ft=mkd tw=72 ts=2 sw=2 expandtab
  au BufRead,BufNewFile *.markdown set ft=mkd tw=72 ts=2 sw=2 expandtab

  au BufRead,BufNewFile *.coffee set ft=coffee

  au BufRead,BufNewFile mutt{ng,}-*-\w\+ set ft=mail

  au Bufread,BufNewFile *.tpl set ft=liquid

  " Compile and run keymappings
  au FileType php map <F6> :!php -f %<CR>
  au FileType python map <F6> :!python %<CR>
  au FileType perl map <F6> :!perl %<CR>
  au FileType ruby map <F6> :!ruby %<CR>
  au FileType lua map <F6> :!lua %<CR>
  au FileType html,xhtml map <F6> :!firefox %<CR>

  " MS Word document reading
  au BufReadPre *.doc set ro hlsearch!
  au BufReadPost *.doc %!antiword "%"
  au BufReadPre *.docx set ro hlsearch!
  au BufReadPost *.docx %!antiword "%"

  " Git
  au BufRead,BufNewFile COMMIT_EDITMSG set ft=git

  " Reload vimrc when it was edited & saved
  au! BufWritePost .vimrc source %

  " Resize the splits upon window resize
  au VimResized * exe "normal! \<c-w>="

  " Airline
  au VimEnter * call AirlineInit()
endif

" Prevent annoying typo
imap <F1> <esc>
nmap q: :q<cr>
ia teh the
ia htis this
ia tihs this
ia funciton function
ia funtion function
ia fucntion function
ia retunr return
ia reutrn return
ca eariler earlier
