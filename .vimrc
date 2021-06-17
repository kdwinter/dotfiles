set nocompatible   " use gVim defaults
set encoding=utf-8 " unicode encoding
syntax on          " enable syntax highlighting
filetype plugin indent on

"runtime bundle/vim-pathogen/autoload/pathogen.vim
"call pathogen#infect()

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
        set guifont=Hack\ 8
    endif
elseif (&term =~ "linux")
    set background=dark
    set t_Co=16
    set termencoding=utf-8
    set nocursorline
    colo desert
else
    set mouse=a
    set termencoding=utf-8

    if has("termguicolors")     " set true colors
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
    else
        set t_Co=256
    endif

    set background=dark
    "set background=light

    "colo desert

    "let g:seoul256_background=234
    "colo seoul256
    "let g:lightline = {'colorscheme': 'seoul256'}

    "colo PaperColor

    "colo xcodedark
    "colo darktooth

    "let g:zenburn_high_Contrast = 1
    "colo zenburn
    "let g:lightline = {'colorscheme': 'deus'}

    "colo simple-dark

    "colo one
    "let g:lightline = {'colorscheme': 'deus'}

    "colo github
    "let g:lightline = {'colorscheme': 'github'}

    "let g:gruvbox_contrast_dark = "hard"
    "let g:gruvbox_contrast_light = "hard"
    "let g:gruvbox_contrast_light = "soft"
    colo gruvbox
    "colo github
    "let g:lightline = {'colorscheme': 'gruvbox'}

    "colo challenger_deep
    "colo onehalfdark

    "colo solarized8_high

    "colo candycode
    "let g:lightline = {'colorscheme': 'materia'}

    "colo sourcerer
    "colo jellybeans
    "let g:lightline = {'colorscheme': 'PaperColor'}
    "colo distinguished
    "colo railscasts2

    "let g:dracula_italic = 1
    "colo dracula
    "let g:lightline = {'colorscheme': 'dracula'}

    "colo paper
    "colo hashpunk

    "let g:nofrils_heavycomments = 1
    "colo nofrils
    "let g:lightline = {'colorscheme': 'deus'}

    "let ayucolor="dark"
    "colo ayu
    "let g:lightline = {'colorscheme': 'ayu_mirage'}

    "colo onedark
    "let g:lightline = {'colorscheme': 'onedark'}
endif

if has("nvim")
    set inccommand=nosplit " shows ex-command change previews
endif

set ttimeoutlen=10      " fix esc in tmux
set clipboard+=unnamedplus " use system clipboard for regular yank/paste
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\ 
set expandtab           " expand tabs to spaces
set nosmarttab          " fuck tabs
set lazyredraw          " turn off lazy redraw
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
"set shell=/usr/bin/zsh  " set default shell
set vb                  " don't beep
set t_vb=               " ^
set nofoldenable        " dont autofold
"set foldmethod=indent   " marks foldstarts/ends with {{{ }}}
set foldmethod=syntax
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
set splitbelow
set formatoptions+=l
set selection=inclusive
set autowrite
set cinoptions=g0,:0,l1,(0,t0
set shortmess=at
set complete=.,t,i,b,w,k
set wildchar=<tab>
set path+=**            " find through :find <filename>
set wildmenu
set wildmode=longest:full,full
set previewheight=5
set joinspaces
set magic
set suffixes=.bak,~,.o,.info,.log,.rbx,.swp
set title
set scrolloff=8         " start scrolling at 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set cursorline
set omnifunc=syntaxcomplete#Complete
set wildignore+=*/.git/*,*/tmp/*,*.swp,*/node_modules/*,*/vendor/*

"function! IsHelp()
"    return &buftype=='help'?' (help) ':''
"endfunction

"function! GetName()
"    return expand("%:t")==''?'<none>':expand("%:t")
"endfunction

set laststatus=2
"set statusline=%3*[%1*%{GetName()}%3*]%{&modified?'+':'\ '}%3*
""set statusline+=%7*%{&modified?'\ (modified)':'\ '}%3*
"set statusline+=%5*%{IsHelp()}%3*
"set statusline+=%6*%{&readonly?'\ (read-only)\ ':'\ '}%3*
"set statusline+=%3*e:%4*%{strlen(&fenc)?&fenc:'none'}%3*\ 
"set statusline+=%3*ff:%4*%{&ff}%3*\ 
"set statusline+=%3*ft:%4*%{strlen(&ft)?&ft:'<none>'}\ 
"set statusline+=%3*tab:%4*%{&ts}
"set statusline+=%3*,%4*%{&sts}
"set statusline+=%3*,%4*%{&sw}
"set statusline+=%3*,%4*%{&et?'et':'noet'}\ 
"set statusline+=%<%3*pwd:%4*%{getcwd()}\ 
"set statusline+=%9*%=
"set statusline+=%3*c:%4*%c\ 
"set statusline+=%3*l:%4*%l\ 
""set statusline+=%3*t:%4*%L
""set tabline+=%{strftime('%c')}

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%m
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

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

" visually select the characters that are wanted in the search, then type // to search for the next occurrence of the selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" show commit that introduced the line on cursor
nmap <silent><Leader>g :call setbufvar(winbufnr(popup_atcursor(split(system("git log -n 1 -L " . line(".") . ",+1:" . expand("%:p")), "\n"), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>

" no ex mode
nnoremap Q <Nop>

nnoremap cc :center<cr>

let g:netrw_banner = 0

" Change leader
let mapleader=","

" Git
let git_diff_spawn_mode=2

" CtrlP
" Use fd
"if executable("fd")
"    let g:ctrlp_user_command = "fd --type file --follow --hidden --exclude .git --exclude tmp --exclude log --exclude node_modules"
"    let g:ctrlp_use_caching = 0
"endif
" Use ripgrep
if executable("rg")
    "set grepprg=rg\ --color=never
    set grepprg=rg\ --vimgrep\ --no-heading\ --color=never
    set grepformat=%f:%l:%c:%m,%f:%l:%m
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif
let g:ctrlp_map = "<c-p>"
let g:ctrlp_cmd = "CtrlP"

" NERDTree
"map <C-n> :NERDTreeToggle<CR>

" Other
let g:vue_disable_preprocessors = 1

" Vimwiki
let hostname = substitute(system('hostname'), '\n', '', '')
if hostname == "archbook"
    let g:vimwiki_list = [{'path': '/home/gig/wiki'}]
elseif hostname == "sanctuary"
    let g:vimwiki_list = [{'path': '/storage/wiki'}]
endif

" Open links in a new vim buffer instead of xdg-open
fun! VimwikiLinkHandler(link)
    let link_infos = vimwiki#base#resolve_link(a:link)
    try
        if link_infos.filename =~ "^http"
            exe '!$BROWSER "' . fnameescape(link_infos.filename) . '"'
        else
            exe "e " . fnameescape(link_infos.filename)
        endif
        return 1
    catch
        echo "Failed opening " . a:link
        return 0
    endtry
endfun

" Remove docx and xlsx from zip.vim
let g:zipPlugin_ext= '*.zip,*.jar,*.xpi,*.ja,*.war,*.ear,*.celzip,*.oxt,*.kmz,*.wsz,*.xap,*.docm,*.dotx,*.dotm,*.potx,*.potm,*.ppsx,*.ppsm,*.pptx,*.pptm,*.ppam,*.sldx,*.thmx,*.xlam,*.xlsm,*.xlsb,*.xltx,*.xltm,*.xlam,*.crtx,*.vdw,*.glox,*.gcsx,*.gqsx'

" ALE
"let g:ale_sign_error = '✖✖'
"let g:ale_sign_warning = '▲▲'
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_sign_column_always = 1
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'
let g:ale_statusline_format = ['X %d', '! %d', '']
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Allows writing to files with root privileges
cmap w!! w !sudo tee % > /dev/null

" Enable all python highlight features
let python_highlight_all = 1

highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

if has("autocmd")
    au WinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline

    hi ExtraWhitespace ctermbg=red guibg=red
    au ColorScheme * hi ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$\| \+\ze\t/

    if exists("&colorcolumn")
        au InsertEnter * set colorcolumn=78
        au InsertLeave * set colorcolumn=""
    endif

    " Fix filetype detection
    au BufNewFile,BufRead grub.conf setlocal filetype=grub

    " C file specific options
    au FileType c,cpp setlocal cindent noexpandtab ts=8 sts=8 sw=8
    au FileType c,cpp setlocal formatoptions+=ro
    au FileType make  setlocal noexpandtab ts=8 sts=8 sw=8

    " Ruby file specific options
    au BufRead,BufNewFile *.ru setlocal ft=ruby
    au Filetype ruby setlocal tw=80 ts=2 sw=2 sts=2 expandtab
    au Filetype haml setlocal tw=120 ts=2 sw=2 sts=2 expandtab

    " Others..
    au BufRead,BufNewFile *.es6 setlocal ft=javascript
    au BufRead,BufNewFile *.sql setlocal ft=pgsql
    au BufRead,BufNewFile *.svg setlocal ft=svg
    au BufRead,BufNewFile *.vimp setlocal ft=vimperator
    au BufRead,BufNewFile *.md setlocal ft=markdown
    au BufRead,BufNewFile *.markdown setlocal ft=markdown
    au BufRead,BufNewFile mutt{ng,}-*-\w\+ setlocal ft=mail
    au Bufread,BufNewFile *.tpl setlocal ft=liquid
    au BufRead,BufNewFile .spacemacs setlocal ft=lisp
    au FileType vue setlocal tw=200 ts=2 sw=2 sts=2 expandtab
    au FileType javascript setlocal nocindent
    au FileType sh,zsh,bash setlocal ts=4 sw=4 sts=4 expandtab
    au FileType lua setlocal ts=4 sw=4 sts=4 expandtab
    au FileType go setlocal ts=8 sw=8 sts=8 noexpandtab
    au FileType markdown setlocal ts=4 sw=4 sts=4 expandtab
    au FileType vim setlocal ts=4 sts=4 sw=4 expandtab
    au FileType mail setlocal nonumber tw=80 norelativenumber formatoptions+=w
    au FileType vimwiki setlocal nowrap tw=120

    " Compile and run keymappings
    au FileType php map <F6> :!php -f %<CR>
    au FileType python map <F6> :!python %<CR>
    au FileType perl map <F6> :!perl %<CR>
    au FileType ruby map <F6> :!ruby %<CR>
    au FileType lua map <F6> :!lua %<CR>
    au FileType html,xhtml map <F6> :!firefox-developer-edition %<CR>
    au FileType mail map <F6> maGkkkdddddddd'ai<CR>--<ESC>:r ~/.config/mutt/signature_work<CR>kk

    " MS Word document reading
    au BufReadPre *.doc set ro hlsearch!
    au BufReadPost *.doc %!antiword "%"
    au BufReadPre *.docx set ro hlsearch!
    au BufReadPost *.docx %!docx2txt "%" -

    " Additional plugins based on filetype
    "au FileType i3 packadd i3-vim-syntax
    au BufReadPre *.rs packadd rust.vim
    au BufReadPre *.ex packadd vim-elixir
    au BufReadPre *.exs packadd vim-elixir
    au BufreadPre *.eex packadd vim-elixir
    au BufreadPre *.leex packadd vim-elixir
    au BufReadPre *.cr packadd vim-crystal
    au BufReadPre *.haml packadd vim-haml
    au BufReadPre *.js packadd vim-javascript
    au BufReadPre *.es6 packadd vim-javascript
    au BufReadPre *.jsx packadd vim-jsx
    au BufReadPre *.md packadd vim-markdown
    au BufReadPre *.toml packadd vim-toml
    au BufReadPre *.vue packadd vim-vue

    " Git
    au BufRead,BufNewFile COMMIT_EDITMSG setlocal ft=git

    " Reload vimrc when it is the current file being saved
    au! BufWritePost vimrc source %

    " Resize the splits upon window resize
    au VimResized * exe "normal! \<c-w>="

    " Transparent editing of gpg encrypted files.
    " By Wouter Hanegraaff
    augroup encrypted
        au!
        autocmd BufReadPre,FileReadPre *.gpg set viminfo=
        autocmd BufReadPre,FileReadPre *.gpg set noswapfile noundofile nobackup
        autocmd BufReadPre,FileReadPre *.gpg set bin
        autocmd BufReadPre,FileReadPre *.gpg let ch_save = &ch|set ch=2
        autocmd BufReadPost,FileReadPost *.gpg '[,']!gpg --decrypt 2> /dev/null
        autocmd BufReadPost,FileReadPost *.gpg set nobin
        autocmd BufReadPost,FileReadPost *.gpg let &ch = ch_save|unlet ch_save
        autocmd BufReadPost,FileReadPost *.gpg execute ":doautocmd BufReadPost " . expand("%:r")
        autocmd BufWritePre,FileWritePre *.gpg '[,']!gpg --default-recipient-self -ae 2>/dev/null
        autocmd BufWritePost,FileWritePost *.gpg u
    augroup END
endif

" Common typo's
imap <F1> <ESC>
nmap q: :q<CR>
ia funtcion function
ia fucntion function
ia funciton function
ia dfe def
ia edn end
ia teh the
ia htis this
ia tihs this
ia retunr return
ia reutrn return
ia eariler earlier
