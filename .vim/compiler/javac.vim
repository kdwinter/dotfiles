" Vim compiler file
" Compiler:     javac
" Maintainer:   Doug Kearns <djkea2@gus.gscit.monash.edu.au>
" URL:		http://gus.gscit.monash.edu.au/~djkea2/vim/compiler/javac.vim
" Last Change:  2001 Sep 25

if exists("current_compiler")
  finish
endif
let current_compiler = "javac"

setlocal makeprg=javac

setlocal errorformat=%E%f:%l:\ %m,%-Z%p^,%-C%.%#,%-G%.%#
