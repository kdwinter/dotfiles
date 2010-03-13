set nocompatible        " use gVim defaults
set encoding=utf-8      " unicode encoding
syntax on               " enable syntax highlighting
if v:version >= 700
    set cursorline
    set listchars+=tab:»·,trail:·,extends:~,nbsp:.
endif
if has('gui_running')
    let &guicursor = &guicursor . ",a:blinkon0" " disable cursor blinking
    set guioptions=tmaegr
    "set guioptions-=m                           " remove the menu bar
    "set guioptions-=T                           " remove the tool bar
    "set guioptions-=L                           " never show scrollbars
    "set guioptions-=R                           " set guioptions-=e
    "set guioptions-=m
    "set guioptions-=r
    "set guioptions+=a
    "set guioptions+=c
    set columns=100
    set lines=50
    if has ('win32')
        set guifont=DejaVu_Sans_Mono:h8:cANSI
    else
        ""set guifont=Monaco\ 7.5
        "set guifont=Profont\ 8
        "set guifont=Liberation\ Mono\ 9
        ""set guifont=Monaco\ 8.6
        set guifont=DejaVu\ Sans\ Mono\ 8.6
        "set guifont=Fixed\ 9
        "set guifont=Terminus\ 10
        """set guifont=Envy\ Code\ R\ 10
        "set guifont=Monaco\ 9
        "set guifont=LucidaTypeWriter\ 9
        "set guifont=Pragmata\ 10
        "set guifont=Inconsolata\ 12
    endif
"elseif (&term =~ 'screen' || &term =~ 'linux')
elseif (&term =~ 'linux')
    set t_Co=16
    set termencoding=utf-8
    set nocursorline
    colo desert
else
    set t_Co=256
    colo wombat256
    "colo zenburn
    "colo molokai
    set mouse=a
    "set ttymouse=xterm
    set termencoding=utf-8
endif

set expandtab           " expand tabs to spaces
set nosmarttab          " fuck tabs
set nolazyredraw        " turn off lazy redraw
set mat=5               " duration to show matching brace
set autoread            " reload files automagically
set viminfo='1000,f1,:100,@100,/20
set shm=atI             " disable intro screen
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
set foldmethod=indent   " marks foldstarts/ends with {{{ }}}
set foldlevel=1
set foldnestmax=10
set tabstop=4           " a n-space tab width
set shiftwidth=2        " allows the use of < and > for VISUAL indenting
set softtabstop=2       " counts n spaces when DELETE or BCKSPCE is used
set textwidth=76        " in new gvim windows
set autoindent          " auto indents next new line
set smartindent         " intelligent indenting -- DEPRECATED by cindent
filetype plugin indent on      " fix the f*cking indenting
set nohlsearch          " highlight no search results
set incsearch           " increment search
set smartcase           " upper-case sensitive search
set backspace=indent,eol,start
set history=1000        " 1000 lines of command line history
set cmdheight=1         " command line height
set ruler               " ruler display in status line
set showmode            " show mode at bottom of screen
set number              " show line numbers
set nobackup            " dont keep backups after close
set writebackup         " do keep one while working
set backupdir=$HOME/.vim/backup
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap//,.,~/tmp,/tmp
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
set shortmess=a
set complete=.,t,i,b,w,k
set wildchar=<tab>
set wildmenu
set wildmode=longest:full,full
set previewheight=5

" Set up the status line
fun! <SID>SetStatusLine()
    let l:s1="%-3.3n\\ %f\\ %h%m%r%w"
    let l:s2="[%{strlen(&filetype)?&filetype:'?'},%{&encoding},%{&fileformat}]"
    let l:s3="%=\\ 0x%-8B\\ \\ %-14.(%l,%c%V%)\\ %<%P"
    execute "set statusline=" . l:s1 . l:s2 . l:s3
endfun
set laststatus=2
call <SID>SetStatusLine()

" common save shortcuts
inoremap <C-s> <esc>:w<cr>a
nnoremap <C-s> :w<cr>

" Set taglist plugin options
"let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Compact_Format = 1
let Tlist_Show_Menu = 1
map <F7> :Tlist<CR>

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Rails
let g:rails_subversion=1
let g:rails_menu=2

" NERDTree
let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
map <F12> :NERDTreeToggle<CR>

" Fuzzy
map <C-t> :FuzzyFinderTextMate<CR>

" TVO
let otl_install_menu=1
let no_otl_maps=0
let no_otl_insert_maps=0
let otl_bold_headers=0
let otl_use_thlnk=0

" Fix filetype detection
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.sys set filetype=php
au BufNewFile,BufRead grub.conf set filetype=grub
au BufNewFile,BufRead *.blog set filetype=blog

" C file specific options
au FileType c,cpp set cindent
au FileType c,cpp set formatoptions+=ro

" Ruby file specific options
au BufRead,BufNewFile *.rpdf set ft=ruby
au BufRead,BufNewFile *.rxls set ft=ruby
au BufRead,BufNewFile *.ru set ft=ruby
au BufRead,BufNewFile *.god set ft=ruby
au BufRead,BufNewFile *.rtxt set ft=html spell
au BufRead,BufNewFile *.sql set ft=pgsql

au BufRead,BufNewFile *.rl set ft=ragel
au BufRead,BufNewFile *.svg set ft=svg
au BufRead,BufNewFile *.haml set ft=haml
au BufRead,BufNewFile *.mustache set ft=mustache

au BufRead,BufNewFile *.md set ft=mkd tw=72 ts=2 sw=2 expandtab
au BufRead,BufNewFile *.markdown set ft=mkd tw=72 ts=2 sw=2 expandtab
au BufRead,BufNewFile *.ron set ft=mkd tw=65 ts=2 sw=2 expandtab

au BufRead,BufNewFile *.coffee set ft=coffee

au Filetype ruby set textwidth=80 ts=2
au Filetype haml set ts=2 sw=2 sts=0 expandtab tw=120

" Python file specific options
au FileType python set omnifunc=pythoncomplete#Complete

" Compile and run keymappings
au FileType php map <F6> :!php -f %<CR>
au FileType python map <F6> :!python %<CR>
au FileType perl map <F6> :!perl %<CR>
au FileType ruby map <F6> :!ruby %<CR>
au FileType lua map <F6> :!lua %<CR>
au FileType html,xhtml map <F6> :!firefox %<CR>

" MS Word document reading
au BufReadPre *.doc set ro
au BufReadPre *.doc set hlsearch!
au BufReadPost *.doc %!antiword "%"

" Reload vimrc when we edit it
au! BufWritePost .vimrc source %

" Access to todolist
command! Todo :sp ~/.todo/todo.txt

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
ia foreahc foreach
ia !+ !=
ca eariler earlier
ca !+ !=
ca ~? ~/
