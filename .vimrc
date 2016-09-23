set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" let My Plugin
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'kana/vim-arpeggio'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required

:set number
syntax on
filetype on
au BufRead,BufNewFile *.go set filetype=go
filetype plugin indent on
:set incsearch
:set hlsearch
:set tabstop=4
nnoremap <CR> :noh<CR>
:set cursorline
:set backspace=2 " make backspace work like most other apps
:set backspace=indent,eol,start
let mapleader=" "
:set nowrap

call arpeggio#map('n', '', 0, 'df', '<c-w>')
call arpeggio#map('i', '', 0, 'df', '<c-w>')
