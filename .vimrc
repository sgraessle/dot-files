call pathogen#infect()

set showcmd
set incsearch
set ruler
syntax on
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
	au!

	" For all text files set 'textwidth' to 78 characters.
	autocmd FileType text setlocal textwidth=78

	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event handler
	" (happens when dropping a file on gvim).
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\   exe "normal! g`\"" |
				\ endif

	" Use .as for ActionScript files, not Atlas files.
	autocmd BufReadPre *.as set ff=mac
	autocmd BufNewFile,BufRead *.as set filetype=actionscript
	autocmd FileType actionscript setlocal sw=4 sts=4 et
	autocmd FileType ruby setlocal sw=2
	autocmd BufNewFile,BufRead *.thtml setfiletype php
	autocmd BufNewFile,BufRead *.ctp setfiletype php
augroup END

set smarttab softtabstop=4 shiftwidth=4 ts=4
set ignorecase smartcase smartindent showmatch
set tags=./tags,tags,/
set hidden

let mapleader = ","

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>

nnoremap <leader>w <C-w>v<C-w>1
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>a :Ack
nnoremap <leader>nt :NERDTree<cr>

func GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command -nargs=? G call GitGrep(<f-args>)

" Run grep with the word under the cursor
func GitGrepWord()
  normal! "zyiw
  call GitGrep('-w -e ', getreg('z'))
endf
nmap <C-x>G :call GitGrepWord()<CR>

set scrolloff=3
nmap <silent> <leader>n :silent :nohlsearch<CR>
nmap <silent> <leader>s :set nolist!<CR>
nmap <silent> <leader>t :!ctags --extra=+f --recurse=yes .<CR>
set shortmess=atI

"set ffs=mac,unix,dos
set ffs=unix,dos,mac
