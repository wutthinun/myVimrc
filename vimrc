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
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'yggdroot/indentline'
Plugin 'leafgarland/typescript-vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'magarcia/vim-angular2-snippets'

call vundle#end()            " required
filetype plugin indent on    " required

:set number
set guifont=Source\ Code\ Pro\ for\ Powerline\ "make sure to escape the spaces in the name properly"
set encoding=utf-8
set path+=**
set wildmenu
syntax on
filetype on
au BufRead,BufNewFile *.go set filetype=go
" au VimEnter *  NERDTree
map <C-n> :NERDTreeToggle<CR>
" map <C-t> :terminal<CR>
filetype plugin indent on
:set incsearch
:set hlsearch
:set tabstop=4 shiftwidth=4 ""softtabstop=2 expandtab
nnoremap <CR> :noh<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
:set cursorline
" :set backspace=2 " make backspace work like most other apps
:set backspace=indent,eol,start
let mapleader=" "
:set nowrap

" call arpeggio#map('n', '', 0, 'df', '<c-w>')
" call arpeggio#map('i', '', 0, 'df', '<c-w>')

" set for GoLang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>s <Plug>(go-def-split)
au FileType go nmap <Leader>v <Plug>(go-def-vertical)

let g:go_fmt_command = "goimports"

" For indentline
" let g:indentLine_color_term = 239
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
let g:indentLine_char = '|'

" For vim-airline
set laststatus=2
" let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" For vim-airthemes
let g:airline_theme='silver'