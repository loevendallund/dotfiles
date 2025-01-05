local g = vim.g       -- Global variables
local opt = vim.opt   -- Set options (global/buffer/windows-scoped)
local o = vim.o

----------------------------------------------------------------------------------
-- General
----------------------------------------------------------------------------------
opt.mouse = 'a'                       				-- Enable mouse support
opt.clipboard = 'unnamedplus'         				-- Copy/paste to system clipboard
opt.swapfile = false                  				-- Don't use swapfile
--opt.completeopt = 'menu,longest'

----------------------------------------------------------------------------------
-- Neovim UI
----------------------------------------------------------------------------------
opt.number = true											-- Show line number
opt.signcolumn = 'number'								-- Show line number
opt.showmatch = true										-- Highlight matching parenthesis
opt.foldmethod = 'expr'									-- Enable folding
opt.foldexpr = 'nvim_treesitter#foldexpr()'		-- Use treesitter fold
opt.splitright = true									-- Vertical split to the right
opt.splitbelow = true									-- Horizontal split to the bottom
opt.ignorecase = true									-- Ignore case letters when search
opt.smartcase = true										-- Ignore lowercase for the whole pattern
opt.linebreak = true										-- Wrap on word boundary
opt.termguicolors = true								-- Enable 24-bit RGB colors
opt.laststatus = 3										-- Set global statusline
opt.background = 'dark'								-- Set default background colour

----------------------------------------------------------------------------------
-- Tabs, indent
----------------------------------------------------------------------------------
--opt.expandtab = false									-- Use spaces instead of tabs
--vim.o.shiftwidth = 3
o.shiftwidth = 3										-- Shift 3 spaces when tab
opt.tabstop = 3											-- 1 tab == 3 spaces
opt.smartindent = true									-- Autoindent new lines
opt.smarttab = true

----------------------------------------------------------------------------------
-- Memory, CPU
----------------------------------------------------------------------------------
opt.hidden = true											-- Enable background buffers
opt.history = 1000										-- Remember N lines in history
opt.lazyredraw = true									-- Faster scrolling
opt.synmaxcol = 240										-- Max column for syntax highlight
opt.updatetime = 300										-- ms to wait for trigger an event

----------------------------------------------------------------------------------
-- Startup
----------------------------------------------------------------------------------
-- Disable nvim intro
opt.shortmess:append "sI"

-- Disable builtins plugins
local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit"
}

for _, plugin in pairs(disabled_built_ins) do
	g["loaded_" .. plugin] = 1
end
