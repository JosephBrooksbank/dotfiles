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

""" Mappings
nnoremap <leader>v <c-v>
nnoremap // :nohlsearch<CR>
" Vim only items (incompatible with neovim)
if !has('nvim')
        " Plugins 
        call plug#begin()
        Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
        call plug#end()

        " Colorscheme
        colorscheme catppuccin-mocha

endif

""" EasyMotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

syntax enable
