" ░▒▓ AKUFOOLZ VIM DOTFILE v0.0.1 ▓▒░

" ░▒▓ VIM-PLUG SETTINGS ▓▒░

" specify directory for plugins
call plug#begin('~/.vim/plugged')

" plugins go here
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim'

" initialize plugin system
call plug#end()

" ░▒▓ GENERAL VIM SETTINGS ▓▒░

" initiate vim-sensible at runtime to allow overwriting
runtime! plugin/sensible.vim

" remove status line information
set noshowmode

" show line numbers
set number

" show tabline
set showtabline=2

" wrap lines
set wrap

" enable linebreaks
set linebreak

" set tabs to four spaces
set tabstop=4 shiftwidth=4

" use spaces instead of tabs
" set expandtab

" ignore case when searching
set ignorecase

" smartcase when searching
set smartcase

" ░▒▓ CUSTOM REMAP SETTINGS ▓▒░

" remap jj to escape in insert mode
inoremap jj <ESC>

" remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" ░▒▓ COLOR SCHEME SETTINGS ▓▒░

" set vim color scheme + options
let g:nord_italic_comments = 1
colorscheme dracula 

" ░▒▓ GVIM GUI SETTINGS ▓▒░

if has('gui_running')

	" set gvim font
	set guifont=Powerline_Consolas:h10:cANSI:qDRAFT

	" remove gvim gui elements
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	set guioptions-=e
endif

" ░▒▓ LIGHTLINE SETTINGS ▓▒░

let g:lightline = {
	\ 'colorscheme': 'Dracula',
	\ 'separator': { 'left': '▓▒░', 'right': '░▒▓' },
	\ 'subseparator': { 'left': '▒', 'right': '░' }
	\ }
