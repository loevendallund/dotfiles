local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
--vim.cmd [[
--	augroup packer_user_config
--		autocmd!
--		autocmd BufWritePost plugins.lua source <afile> | PackerSync
--	augroup end
--]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
--if not status_ok then
--	return
--end

return packer.startup({function(use)
   -- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"
	use 'nvim-treesitter/nvim-treesitter'
	use 'HiPhish/rainbow-delimiters.nvim'
	--use 'jlcrochet/vim-razor'

	--LSP
	use 'neovim/nvim-lspconfig'
	use 'j-hui/fidget.nvim'
	use 'kkharji/lspsaga.nvim'
	--use 'dart-lang/dart-vim-plugin'
	use 'sheerun/vim-polyglot'

	--Autocompletion
	use {
		'neoclide/coc.nvim',
		branch = 'release'
	}

	use 'lervag/vimtex'
 
	use 'norcalli/nvim-colorizer.lua'

	-- Color schemes
	use {
		'rose-pine/neovim',
		as = 'rose-pine'
	}
	use {
		'catppuccin/nvim', 
		as = 'catppuccin'
	}

	use 'lukas-reineke/indent-blankline.nvim'
	use 'folke/zen-mode.nvim'
	use 'folke/twilight.nvim'
	use {
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		{
  signs = true, -- show icons in the signs column
  sign_priority = 8, -- sign priority
  -- keywords recognized as todo comments
  keywords = {
    FIX = {
      icon = " ", -- icon used for the sign, and in search results
      color = "error", -- can be a hex color, or a named color (see below)
      alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
      -- signs = false, -- configure signs for some keywords individually
    },
    TODO = { icon = " ", color = "info" },
    HACK = { icon = " ", color = "warning" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
    TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
  },
  gui_style = {
    fg = "NONE", -- The gui style to use for the fg highlight group.
    bg = "BOLD", -- The gui style to use for the bg highlight group.
  },
  merge_keywords = true, -- when true, custom keywords will be merged with the defaults
  -- highlighting of the line containing the todo comment
  -- * before: highlights before the keyword (typically comment characters)
  -- * keyword: highlights of the keyword
  -- * after: highlights after the keyword (todo text)
  highlight = {
    multiline = true, -- enable multine todo comments
    multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
    multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
    before = "", -- "fg" or "bg" or empty
    keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
    after = "fg", -- "fg" or "bg" or empty
    pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
    comments_only = true, -- uses treesitter to match keywords in comments only
    max_line_len = 400, -- ignore lines longer than this
    exclude = {}, -- list of file types to exclude highlighting
  },
  -- list of named colors where we try to extract the guifg from the
  -- list of highlight groups or use the hex color if hl not found as a fallback
  colors = {
    error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    info = { "DiagnosticInfo", "#2563EB" },
    hint = { "DiagnosticHint", "#10B981" },
    default = { "Identifier", "#7C3AED" },
    test = { "Identifier", "#FF00FF" }
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    -- regex that will be used to match keywords.
    -- don't replace the (KEYWORDS) placeholder
    pattern = [[\b(KEYWORDS):]], -- ripgrep regex
    -- pattern = [[\b(KEYWORDS)\b]], -- match without the extra colon. You'll likely get false positives
  },
}
	}

	use {
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = 'kyazdani42/nvim-web-devicons'
	}

	use 'ms-jpq/chadtree'
	use 'nvim-telescope/telescope.nvim'
	use 'fannheyward/telescope-coc.nvim'

	if packer_bootstrap then
		require('packer').sync()
	end
	end,
	config = {
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})
