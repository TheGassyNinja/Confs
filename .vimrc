"	TheGassyNinja
"		.vimrc
" show numbering - Expand on this function!
set number relativenumber
set ruler
set visualbell
set t_Co=256 	"Set if term supports 256 colors
" syntax
syntax on
" no vi compatible
" set nocompatible
" helps plugins load
filetype off
filetype plugin indent on

" Plugins
call plug#begin()
	"AutoCompleate
	Plug 'ycm-core/YouCompleteMe' "cd into plug folder & ./install.py
	Plug 'vimwiki/vimwiki'
	"Themes
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'mcchrish/zenbones.nvim'
	Plug 'pablopunk/sick.vim'
	"Nerdtree	
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	
	Plug 'vifm/vifm' "Learn!!
	Plug 'vifm/vifm-colors'
	
	
	
call plug#end()

" Pick a leader
let mapleader = ","
"  map copy an paste
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>Y "*y
noremap <leader>P "*p

" PlugInstall
noremap <leader>PI :PlugInstall

"--------------------------------->> Insert Mode
" ii escapes to Normal
inoremap ii <Esc>

" Auto Bracketing (without plugin
inoremap " ""<left>
inoremap ' ''<left>
	
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap < <><left>

"----------------------------------->>  NERDTree 
" :NERDTree HKs
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"  Start NERDTree and put cursor in doc
"  autocmd VimEnter * NERDTree | wincmd p
" ADD REST!!

" set show .files "Shift+i or I to toggle
let NERDTreeShowHidden=0	

" :color
colorscheme industry
"-------------------------------------------------------<<<

"
"





