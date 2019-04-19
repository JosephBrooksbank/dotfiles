""" BASIC SETTINGS 
"colorscheme badwolf		"This is a colorscheme, I'll probably change this one later to fit my system more 
syntax enable 			" Enables syntax processing, important for basically everything 

let mapleader=","        " Setting leader key to comma

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
inoremap jk <esc>             " MAPS jk TO ESC, IMPORTANT 


""" SHORTCUTS 

"TODO INSTALL gundo.vim at some point, undo tree 

nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>s :mksession<CR>
