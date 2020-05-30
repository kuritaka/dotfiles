"##################################################
" .vimrc
"
" %HOME%\.vimrc   i.e. C:\user\testuser01\.vimrc
"##################################################

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

"--------------------
" Netrw
"--------------------
"list like 'ls -l'
let g:netrw_liststyle=1

let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"

"let g:netrw_banner=0
let g:netrw_preview=1

let g:netrw_altv = 1
let g:netrw_winsize = 80

"TreeView
let g:netrw_liststyle = 3

"Tab display with Enter
let g:netrw_browse_split = 3

