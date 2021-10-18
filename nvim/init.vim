lua require 'init'

syntax on

set nocompatible
set showmatch
set ignorecase
set mouse=a
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set hidden
set timeoutlen=2000

"Treesitter stuff
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

source $HOME/.config/nvim/keys.vimrc
