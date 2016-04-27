set nocompatible

execute pathogen#infect()

syntax enable
filetype plugin indent on
set cindent incsearch hlsearch ignorecase smartcase ruler
set noexpandtab softtabstop=4 shiftwidth=4
set hidden
set linebreak

auto FileType gitcommit set spell
auto FileType ruby setlocal softtabstop=2 shiftwidth=2 expandtab
auto FileType json setlocal softtabstop=2 shiftwidth=2 expandtab
