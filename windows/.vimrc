"LANG
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set ambiwidth=double  " Character collapse

"color
syntax enable
colorscheme atom-dark-256


"----------------------------------------------------------
" Tab indent
"----------------------------------------------------------
set expandtab " Replace tab input with multiple blank inputs
set tabstop=4 " Width occupied by tab characters on the screen
set softtabstop=4 " The width at which the cursor moves with a tab key or backspace key for consecutive blanks
set autoindent " Continue indentation of previous line at line feed
set smartindent " Check the syntax of the previous line on line feed and increase / decrease the indent of the next line
set shiftwidth=4 " Width that increases and decreases with smartindent

" Avoid automatic indentation when pasting from clipboard in insert mode
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif


"---------------------------------------------------------- 
set t_ti=""   " Exit leaving the screen of vim


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
"let g:netrw_liststyle = 3

"Tab display with Enter
let g:netrw_browse_split = 3

augroup NetrwKeyMap
    au!

   " (h) up
    au FileType netrw nmap <buffer> h -

   "  (l) Open file, change directory
    au FileType netrw nmap <buffer> l <CR>


    
