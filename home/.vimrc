set nocompatible
set mouse=a "allow mouse scrolling + visual block selection

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elzr/vim-json'
Plug 'gisphm/vim-gitignore'
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'godlygeek/tabular'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'milch/vim-fastlane'
call plug#end()

set autoindent incsearch hlsearch ignorecase smartcase ruler
set expandtab softtabstop=4 shiftwidth=4
set hidden
set linebreak
set clipboard=unnamed

auto FileType plugin indent on
auto FileType gitcommit set spell
auto FileType ruby setlocal softtabstop=2 shiftwidth=2 expandtab
auto FileType json setlocal softtabstop=2 shiftwidth=2 expandtab
auto FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
auto BufRead,BufNewFile *.tf set filetype=terraform

colorscheme solarized8_dark

"neovim
set laststatus=1
