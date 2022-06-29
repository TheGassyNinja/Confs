"	TheGassyNinja
"		.vimrc
" show numbering - Expand on this function!
set number relativenumber
set ruler
set visualbell
" syntax
syntax on
" no vi compatible
" set nocompatible
" helps plugins load
filetype off
filetype plugin indent on
" Pick a leader
let mapleader = ","

" Plugins
call plug#begin()

	Plug 'preservim/nerdtree'
	Plug 'ycm-core/YouCompleteMe' "cd into plug folder & ./install.py
	"Theme
	Plug 'mcchrish/zenbones.nvim'
	Plug 'pablopunk/sick.vim'
	" Nerd Highlighting - working?
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'

call plug#end()


"----------------------------------->>  NERDTree 
" :NERDTree HKs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"  Start NERDTree and put cursor in doc
"  autocmd VimEnter * NERDTree | wincmd p

"  map copy an paste
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>Y "*y
noremap <leader>P "*p

" set show .files "Shift+i or I to toggle
let NERDTreeShowHidden=0	

" :color
colorscheme industry
"-------------------------------------------------------<<<

"
"





