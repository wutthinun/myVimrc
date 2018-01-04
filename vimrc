call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'kana/vim-arpeggio'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'leafgarland/typescript-vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'posva/vim-vue'
Plug 'wincent/command-t'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set number
set relativenumber
set encoding=utf-8           " Set default encoding to UTF-8"
set guifont=Source\ Code\ Pro\ for\ Powerline\ "make sure to escape the spaces in the name properly"
set encoding=utf-8
set path+=**
set wildmenu
set ignorecase
set noswapfile
set nobackup
syntax on
set background=dark
if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif
colorscheme solarized
filetype on
au BufRead,BufNewFile *.go set filetype=go
" au VimEnter *  NERDTree
map <C-n> :NERDTreeToggle<CR>
filetype plugin indent on
:set incsearch
:set hlsearch
:set tabstop=2 shiftwidth=2 expandtab""softtabstop=2 expandtab

" Remap key
let mapleader=" "
noremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>
nnoremap <cr> :noh<cr>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

:set cursorline
" :set backspace=2 " make backspace work like most other apps
:set backspace=indent,eol,start
:set nowrap
let NERDTreeShowHidden=1

" call arpeggio#map('n', '', 0, 'df', '<c-w>')
" call arpeggio#map('i', '', 0, 'df', '<c-w>')

" set for GoLang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
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
" let g:airline#extensions#tabline#enabled = 1

" For vim-airthemes
let g:airline_theme='silver'

