syntax on
syntax enable
colorscheme nord
filetype indent on
filetype plugin on
filetype on
set exrc
set secure
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
let g:go_highlight_trailing_whitespace_error=0
map <F2> :NERDTreeToggle<CR>
augroup END
set nocompatible
set enc=utf-8
set expandtab 
set fenc=utf-8
set smartindent
set termencoding=utf-8
set number
set autoindent
set ts=4
set shiftwidth=4 
set t_Co=256
set tabstop=4 
set noswapfile
set incsearch
set number relativenumber
set cursorline
highlight clear CursorLine
set shiftwidth=4

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


call plug#begin('~/.vim/plugged')

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'


call plug#end()
