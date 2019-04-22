""" BASIC SETTINGS 
"colorscheme badwolf	" A lot of people like badwolf, it doesn't fit my color scheme so I'm keeping it off for now 
setlocal spell
set spelllang=en
let mapleader=","        " Setting leader key to comma

""" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'     " Plugin to support LateX files 
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'honza/vim-snippets'     " Vim snippets (seperate from ultisnips but part of it)
Plug 'sirver/ultisnips'  " Plugin to manage snippets (macros, basically)
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsDirectories=["UltiSnips", "mysnips"]


" Plug 'Valloric/YouCompleteMe' " Plugin for visual code completion 
" """ BACKUPS 
" set backup
" set backupdir=~/tmp
" set directory=~/tmp
" set writebackup


call plug#end()

""" SPACES AND TABS 

set tabstop=5			" number of visual spaces per TAB 
set softtabstop=5		" number of spaces INSERTED and DELETED when pressing TAB during edit (as opposed to how many are displayed for tabs)
set expandtab 			" Press tab, get $softtabstop spaces instead 


""" UI CONFIG 
set number 			" show line numbers (hell yeah)
set showcmd 			" shows last command used in bottom right (in case I make mistakes) 
set cursorline			" underlines entire line of current edit, important when switching back and forth between windows

filetype indent on 		" load filetype-specific files, for different spacing standards TODO make these 

set wildmenu 			" visual autocomplete for command menu 

set lazyredraw 			" only redraw when needed, apparently faster macros 

set showmatch 			" IMPORTANT, highlights matching parenthesis 


""" SEARCHING 

set incsearch 			" search as you type 
set hlsearch			" highlight matches 

" TURN OFF HIGHLIGHTED SEARCH WITH ,space because vim likes to keep things highlighted FOREVER 
nnoremap <leader><space> :nohlsearch<CR>	

set foldenable 			" Enable "folding" (the process of hiding sections of the file, like in CLion 

set foldlevelstart=10		" opens most folds by default, only really really nested code will fold by default 
set foldnestmax=10		" protects against overfolding 

set foldmethod=indent 		" fold based on indent level (helpful for python, mostly)



""" MOVEMENT 

nnoremap gV `[v`] 		" visually selects block of characters from last INSERT mode TODO see if I want this 

" jk is escape 
inoremap jj  <esc>             " MAPS jk TO ESC, IMPORTANT 


""" SHORTCUTS 

"TODO INSTALL gundo.vim at some point, undo tree 

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession<CR>

