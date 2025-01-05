-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a comma
vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>')

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl +{j,k,i,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')
map('i', '<leader>s', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':terminal<CR>')	-- open
map('t', '<Esc>', '<C-\\><C-n>')		-- exit

-- Barbar
--map('n', '<A-h>', ':BufferPrevious<CR>')
--map('n', '<A-l>', ':BufferNext<CR>')

-- COC mappings
map('i', '<CR>', 'coc#pum#visible()? coc#pum#confirm() : "\\<CR>"', { expr = true })
map('i', '<Esc>', 'coc#pum#visible()? coc#pum#cancel() : "\\<Esc>"', { expr = true })
map('n', '<leader>rn', '<PLUG>(coc-rename)')
map('n', '<leader>i', ':CocCommand workspace.inspectEdit<CR>')
--map('n', '<leader>j', ':call CocAction("doHover")<CR>')

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>') -- Find files
map('n', '<leader>fg', ':Telescope live_grep<CR>') -- Live grep string
map('n', '<leader>fb', ':Telescope buffers<CR>') -- Find in buffers
map('n', '<leader>fh', ':Telescope help_tags<CR>')

--map('n', '<leader>fd', ':lua require"telescope.builtin".treesitter{}<CR>')

-- Coc Telescope
map('n', 'gd', ':Telescope coc definitions<CR>')
map('n', 'gy', ':Telescope coc type_definitions<CR>')
map('n', 'gi', ':Telescope coc implementations<CR>')
map('n', 'gr', ':Telescope coc references<CR>')

-- ChadTree
map('n', '<C-v>', ':CHADopen<CR>') -- change horizontal to vertical
--map('n', '<C-v>', ':NvimTreeToggle<CR>') -- change horizontal to vertical
