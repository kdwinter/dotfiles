set nocompatible   " use gVim defaults
set encoding=utf-8 " unicode encoding
syntax on          " enable syntax highlighting

" TODO: Use native vim8 bundles/plugins?
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

if has("gui_running")
    winpos 0 0
    set guicursor=a:blinkon0 " disable cursor blinking
    set guitablabel=%t\ %m
    set guioptions=gec
    set columns=100
    set lines=55

    if has("win32")
        set guifont=Courier_New:h8:cANSI
    else
        set guifont=SF\ Mono\ SemiBold\ 9
    endif
elseif (&term =~ "linux")
    set background=dark
    set t_Co=16
    set termencoding=utf-8
    set nocursorline
    colo desert
else
    set background=dark
    set mouse=a
    set termencoding=utf-8

    if has("termguicolors")     " set true colors
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
    else
        set t_Co=256
    endif

    colo candycode
    "colo distinguished
endif

set clipboard+=unnamedplus
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
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
set shell=/usr/bin/zsh  " set default shell
set vb                  " don't beep
set t_vb=               " ^
set nofoldenable        " dont autofold
set foldmethod=indent   " marks foldstarts/ends with {{{ }}}
"set foldmethod=syntax
set foldlevel=1
set foldnestmax=10
set tabstop=8           " a n-space tab width
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
set cursorline
set omnifunc=syntaxcomplete#Complete

"function! IsHelp()
"    return &buftype=='help'?' (help) ':''
"endfunction

"function! GetName()
"    return expand("%:t")==''?'<none>':expand("%:t")
"endfunction

set laststatus=2
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
"set statusline+=%3*total:%4*%L

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

" Change leader
let mapleader=","

" Git
let git_diff_spawn_mode=2

" CtrlP
let g:ctrlp_map = "<c-p>"
let g:ctrlp_cmd = "CtrlP"

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Other
let g:vue_disable_preprocessors = 1

" Allows writing to files with root priviledges
cmap w!! w !sudo tee % > /dev/null

if has("autocmd")
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
    au FileType c,cpp set cindent noexpandtab ts=8 sts=8 sw=8
    au FileType c,cpp set formatoptions+=ro
    au FileType make  setlocal noexpandtab ts=8 sts=8 sw=8

    " Ruby file specific options
    au Filetype ruby set tw=80 ts=2 sw=2 expandtab
    au Filetype haml set tw=120 ts=2 sw=2 expandtab
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
    au BufRead,BufNewFile *.md set ft=markdown
    au BufRead,BufNewFile *.markdown set ft=markdown
    au BufRead,BufNewFile *.coffee set ft=coffee
    au BufRead,BufNewFile mutt{ng,}-*-\w\+ set ft=mail
    au Bufread,BufNewFile *.tpl set ft=liquid
    au BufRead,BufNewFile .spacemacs set ft=lisp
    au FileType sh,zsh,bash set ts=4 sw=4 sts=4 expandtab
    au FileType markdown set ts=4 sw=4 sts=4 expandtab
    au FileType vim set ts=4 sts=4 sw=4 expandtab

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
endif
