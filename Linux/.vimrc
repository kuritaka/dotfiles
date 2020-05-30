"==============================================================================
" .vimrc
"
"
"==============================================================================

"----------------------------------------------------------
" character
"----------------------------------------------------------
set fileencoding=utf-8 " save with utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " Automatic determination of character code, priority on the left side
set fileformats=unix,dos,mac " Automatic discrimination of line feed code, left side has priority
set ambiwidth=double  " Character collapse

"----------------------------------------------------------
"color
"----------------------------------------------------------
syntax on
colorscheme elflord


"----------------------------------------------------------
set t_ti=""   " Exit leaving the screen of vim



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
" Search string
"----------------------------------------------------------
set incsearch " Incremental Search
set ignorecase " Search pattern is not case sensitive
set smartcase " If the search pattern contains uppercase letters, distinguish case
set hlsearch " Highlight search results

" Toggle highlighting by pressing the ESC key twice
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

