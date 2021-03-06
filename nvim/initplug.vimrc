call plug#begin('~/.vim/plugged')
    Plug 'antoinemadec/FixCursorHold.nvim'
    Plug 'dense-analysis/ale'
    Plug 'lambdalisue/fern.vim'
    Plug 'lambdalisue/fern-git-status.vim'
    Plug 'lambdalisue/fern-renderer-nerdfont.vim'
    Plug 'lambdalisue/glyph-palette.vim'
    Plug 'lambdalisue/nerdfont.vim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'
    Plug 'tpope/vim-sleuth'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'lervag/vimtex'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'kevinoid/vim-jsonc'
call plug#end()

let g:ale_disable_lsp = 1

let g:ale_linters = {
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang'],
    \ 'python' : ['flake8', 'pylint']
\}

autocmd BufNewFile,BufRead *.h++ set syntax=cpp
