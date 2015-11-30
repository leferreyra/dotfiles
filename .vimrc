set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/NERDTree'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-surround'
Plugin 'groenewege/vim-less'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Theme config
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
syntax on
let g:airline_powerline_fonts = 1

" Set some options
" ================
set number

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" MacVim options
set guioptions-=L
set guioptions-=r
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11"

filetype indent on

let delimitMate_expand_cr = 1

" Set working directory for ctrlp
let g:ctrlp_working_path_mode = 'ra'

" Check syntaxis on file open
let g:syntastic_check_on_open=1

" Vim Airline options
" ===================
"
"Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_theme = 'badwolf'

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden


" Key bindings
" ============

map <C-n> 	:NERDTreeToggle<CR>

"nnoremap <C-h> 	:tabprevious<CR>
"nnoremap <C-l>	:tabnext<CR>
"nnoremap <C-k>	:tabnew<CR>
"
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>
