setlocal softtabstop=2
setlocal textwidth=100

" let $PGHOST = 'localhost'
" let $PGUSER = 'rtomayko'
" let $PGDATABASE = 'planwatch'

" nmap <C-e> :w<CR>:!psql < % > /tmp/vim-pgsql-in 2>&1<CR><C-w><C-w>1G0:e! /tmp/vim-pgsql-in<CR>:set readonly<CR><C-w><C-w>
" vmap <C-e> :w! /tmp/vim-pgsql-out<CR>:!psql < /tmp/vim-pgsql-out > /tmp/vim-pgsql-in 2>&1<CR><C-w><C-w>1G0:e! /tmp/vim-pgsql-in<CR>:set readonly<CR><C-w><C-w>

nmap <C-e> :w<CR>:!~/bin/vim-psql-exec < % > /tmp/vim-pgsql-in 2>&1<CR><C-w><C-w>1G0:e! /tmp/vim-pgsql-in<CR>:set readonly<CR><C-w><C-w>
vmap <C-e> :w! /tmp/vim-pgsql-out<CR>:!~/bin/vim-psql-exec < /tmp/vim-pgsql-out > /tmp/vim-pgsql-in 2>&1<CR><C-w><C-w>1G0:e! /tmp/vim-pgsql-in<CR>:set readonly<CR><C-w><C-w>
imap <C-e> <ESC>{v}<C-e>

nmap <C-l> :w<CR>:!psql < % >> /tmp/vim-pgsql.log 2>&1<CR>:echo 'see /tmp/vim-pgsql.log'<CR>
vmap <C-l> :w! /tmp/vim-pgsql-batch<CR> :!psql < /tmp/vim-pgsql-batch >> /tmp/vim-pgsql.log 2>&1<CR>:echo 'see /tmp/vim-pgsql.log'<CR>

