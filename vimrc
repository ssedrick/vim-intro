syntax enable
filetype plugin indent on

if (has("termguicolors"))
  set termguicolors
endif

" Make whitespace charaters visible
set listchars=eol:¬,tab:>-,trail:~
set list

set encoding=UTF-8

" Set up tab handling
" expandtab will turn tabs into spaces
set expandtab
" Tabs are set to two spaces wide
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Show line numbers
set number
" set relativenumber

" Highlights the matches when you search
set incsearch hls

set noswapfile

" Allows you to click/scroll with your mouse
set mouse=a

" Set up spell checking
set spell spelllang=en_us

" You can set the colorscheme with the following
" colorscheme slate




" Use VimPlug. Replace with your plugin manager of choice
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugins')

" Theming
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'

" Navigation/Finding
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'wincent/ferret'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Language Specific
" Only inlude the ones you need.
Plug 'yuezk/vim-js', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript', 'typescript.tsx'] }
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }

call plug#end()
colorscheme OceanicNext


" Maps Ctrl + p to open a file searcher
map <C-p> :Files<CR>

" Maps Ctrl + n to open a folder GUI
map <C-n> :NERDTreeToggle<CR>

" Sets the default command used to search files. This uses ag, but you can use
" others like rg
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:FerretHlsearch = 1

" CoC config. Makes autocomplete a little nicer
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
noremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
