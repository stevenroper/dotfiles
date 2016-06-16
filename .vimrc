set splitright
set splitbelow

syntax on

let g:netrw_liststyle=3
set runtimepath^=~/.vim/bundle/ctrlp.vim

set expandtab
set tabstop=2
set shiftwidth=2

set autoindent

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set number

execute pathogen#infect()

filetype plugin on
