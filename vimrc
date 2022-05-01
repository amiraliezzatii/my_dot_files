set number 
syntax on 
set nocompatible              " required
filetype off                  " required
" Enable folding
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
 highlight BadWhitespace ctermbg=red guibg=darkred
set foldmethod=indent
set foldlevel=99
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set encoding=utf-8
let g:ycm_autoclose_preview_window_after_completion=1
map g  :YcmCompleter GoToDefinitionElseDeclaration
map <S-s> :w ! sudo tee % <cr>
map <S-w> :wq <cr>
map <S-q> :q! <cr>
map <S-t> :terminal <cr>
map <S-r> :w <cr>

