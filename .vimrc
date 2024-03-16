let mapleader=" "
set autoindent
set expandtab
set smarttab
set hlsearch
set ignorecase
set incsearch
set smartcase
set termguicolors

syntax enable
set wrap

set laststatus=2
set ruler
set wildmenu
set cursorline
set number
set noerrorbells
set visualbell
set title

set backspace=indent,eol,start
set confirm
set history=1000

nnoremap <Up> gk
nnoremap <Down> gj

" Vim only items (incompatible with neovim)
if !has('nvim')
        " Plugins 
        call plug#begin()
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
        call plug#end()

        " Colorscheme
        colorscheme catppuccin-mocha

endif

syntax enable
