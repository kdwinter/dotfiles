set nocompatible        " use gVim defaults
set encoding=utf-8      " unicode encoding
syntax on               " enable syntax highlighting
if v:version >= 700
    set cursorline
    set listchars+=tab:»·,trail:·,extends:~,nbsp:.
endif
if has('gui_running')
    let &guicursor = &guicursor . ",a:blinkon0" " disable cursor blinking
    set guioptions-=m                           " remove the menu bar
    set guioptions-=T                           " remove the tool bar
    set guioptions-=L                           " never show scrollbars
    set guioptions-=R                           " set guioptions-=e
    "set guioptions-=m
    "set guioptions-=r
    "set guioptions+=a
    "set guioptions+=c
    if has ('win32')
        set columns=120
        set lines=60
        set guifont=DejaVu_Sans_Mono:h8:cANSI
    else
        set guifont=Monaco\ 7.5
        "set guifont=DejaVu\ Sans\ Mono\ 8
    endif
"elseif (&term =~ 'screen' || &term =~ 'linux')
elseif (&term =~ 'linux')
    set t_Co=16
    set termencoding=utf-8
    set nocursorline
    colorscheme desert
else
    set t_Co=256
    colorscheme gardener
    "colorscheme zenburn
    set mouse=a
    set ttymouse=xterm
    set termencoding=utf-8
endif

ru macros/matchit.vim   " Enabled extended % matching
set shm=atI             " Disable intro screen
set hi=50               " Only store past 50 commands
set ul=150              " Only undo up to 150 times
set lz                  " Don't redraw screen during macros
set tf                  " Improves redrawing for newer computers
set sc                  " Show incomplete command at bottom right
set bs=2                " Allow backspacing over anything
set ic scs              " Only be case sensitive when search contains uppercase
set sb                  " Open new split windows below current
set gd                  " Assume /g flag on :s searches
set hid                 " Allow hidden buffers
set tm=500              " Lower timeout for mappings
set cot=menu            " Don't show extra info on completions
set report=0            " Always report when lines are changed
set shell=/bin/zsh      " set default shell
set vb                  " don't beep
set t_vb=               " ^
set foldenable          " allow folding code
set foldmethod=marker   " marks foldstarts/ends with {{{ }}}
set expandtab           " insert spaces instead of tab chars
set tabstop=4           " a n-space tab width
set shiftwidth=4        " allows the use of < and > for VISUAL indenting
set softtabstop=4       " counts n spaces when DELETE or BCKSPCE is used
set textwidth=80
set autoindent          " auto indents next new line
set nosmartindent       " intelligent indenting -- DEPRECATED by cindent
set hlsearch            " highlight all search results
set incsearch           " increment search
set smartcase           " upper-case sensitive search
set backspace=indent,eol,start
set history=100         " 100 lines of command line history
set cmdheight=1         " command line height
set ruler               " ruler display in status line
set showmode            " show mode at bottom of screen
set number              " show line numbers
set nobackup            " disable backup
set nowritebackup       " ^
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
map <F7> :TlistToggle<CR>

" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" NERDTree
let NERDTreeHijackNetrw=1
let NERDTreeMouseMode=1
map <F12> :NERDTreeToggle<CR>

" Fix filetype detection
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.sys set filetype=php
au BufNewFile,BufRead grub.conf set filetype=grub
au BufNewFile,BufRead *.blog set filetype=blog

" C file specific options
au FileType c,cpp set cindent
au FileType c,cpp set formatoptions+=ro

" Ruby file specific options
au FileType ruby,eruby setlocal sts=2 sw=2
au FileType ruby,eruby set omnifunc=rubycomplete#Complete
au FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
au FileType ruby,eruby let g:rubycomplete_rails = 1
au FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" HTML abbreviations
au FileType html,xhtml,php,eruby imap bbb <br />
au FileType html,xhtml,php,eruby imap aaa <a href=""></a><left><left><left><left><left><left>
au FileType html,xhtml,php,eruby imap iii <img src="" /><left><left><left><left>
au FileType html,xhtml,php,eruby imap ddd <div id=""></div><left><left><left><left><left><left><left><left>
au Filetype html,xhtml,php,eruby map <F8> :read /home/gig/code/html/templates/template.html<CR>

" Compile and run keymappings
au FileType php map <F6> :!php &<CR>
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
command! Todo :sp ~/.rudo/todo.txt

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
