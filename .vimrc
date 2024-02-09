"==============================================================================
" .vimrc for Linux include WSL2
"
"
"==============================================================================

"----------------------------------------------------------
"LANG
"----------------------------------------------------------
set encoding=utf-8
set fileencoding=utf-8 " save with utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " Automatic determination of character code, priority on the left side
set fileformats=unix,dos,mac " Automatic discrimination of line feed code, left side has priority
set ambiwidth=double  " Character collapse



"----------------------------------------------------------
"color
"----------------------------------------------------------
syntax on
"colorscheme elflord
colorscheme atom-dark-256
nnoremap <Esc><Esc> :nohlsearch<CR><ESC>


"----------------------------------------------------------
set t_ti=""   " Exit leaving the screen of vim

set belloff=all

set number
set mouse=a


set noswapfile
set nobackup
set noundofile


"----------------------------------------------------------
"git diff
"----------------------------------------------------------
"Show matching parts in diff display
set diffopt=filler,context:10000

" Default to not read-only in vimdiff
set noro

"----------------------------------------------------------
" Status Line
"----------------------------------------------------------
set laststatus=2 " Always show status line
set showmode " Show current mode
set showcmd " The hit command is displayed below the status line
set ruler " Display the position of the cursor on the right side of the status line


"----------------------------------------------------------
" Tab indent
"----------------------------------------------------------
set tabstop=4 " Width occupied by tab characters on the screen
set shiftwidth=4 " Width that increases and decreases with smartindent
set softtabstop=4 " The width at which the cursor moves with a tab key or backspace key for consecutive blanks
set expandtab " Replace tab input with multiple blank inputs
set autoindent " Continue indentation of previous line at line feed
set smartindent " Check the syntax of the previous line on line feed and increase / decrease the indent of the next line

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
"tab completion
"----------------------------------------------------------
set wildmenu
set wildignorecase

"----------------------------------------------------------
" Search string
"----------------------------------------------------------
set incsearch " Incremental Search
set ignorecase " Search pattern is not case sensitive
set smartcase " If the search pattern contains uppercase letters, distinguish case
set hlsearch " Highlight search results

" Toggle highlighting by pressing the ESC key twice
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>




"---------------------------------------------------------- 
" Netrw
"---------------------------------------------------------- 
let g:netrw_liststyle=1 "list like ls -l

let g:netrw_sizestyle="H"
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"

let g:netrw_preview=1

let g:netrw_altv = 1
let g:netrw_winsize = 80

"let g:netrw_liststyle = 3 "TreeView

let g:netrw_browse_split = 3 "Tab display with Enter

augroup NetrwKeyMap
    au!

   " h key is  up
    au FileType netrw nmap <buffer> h -

   " l key is  Open file, change directory
    au FileType netrw nmap <buffer> l <CR>

