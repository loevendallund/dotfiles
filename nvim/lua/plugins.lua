local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'antoinemadec/FixCursorHold.nvim'
	Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

	Plug 'EdenEast/nightfox.nvim'
	Plug 'shadmansaleh/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'

    Plug 'nvim-telescope/telescope.nvim'

    Plug('neoclide/coc.nvim', {['branch'] = 'release'})
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'romgrk/barbar.nvim'

    Plug 'wlangstroth/vim-racket'
    Plug('Olical/conjure', {['tag'] = 'v4.25.0'})

vim.call('plug#end')
