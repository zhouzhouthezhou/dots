set showcmd
set showmatch
set number
set mouse=a
"set nowrap
set clipboard=unnamedplus
set noshowmode
set wildmenu
set cursorline
set ts=4 sw=4
set splitright
set splitbelow


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
"Plug 'drewtempelmeyer/palenight.vim'
Plug 'dylanaraps/wal.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
call plug#end()
set laststatus=2

"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeWinSize=27

"colo palenight
colorscheme wal
"let g:palenight_terminal_italics = 1
let g:lightline = {'colorscheme':'wal'}

hi Normal ctermfg=white ctermbg=none
hi LineNr ctermbg=none

hi clear CursorLine
hi CursorLine gui=underline cterm=underline

