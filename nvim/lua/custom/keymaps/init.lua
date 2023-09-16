-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Nvim Copilopt
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Quite Insert and Visual Mode by Pressing jk
vim.keymap.set({ 'i', 'v' }, 'jk', '<Esc>')

-- Nvim File Explorer
vim.keymap.set({ 'n', 'v' }, '<leader>pv', vim.cmd.Ex)

-- Save And Format
vim.keymap.set({ 'n', 'i', 'v' }, '<C-s>', function()
	vim.cmd.w()
	vim.cmd.Format()
end)

-- select All
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Keymaps For Tabs and Windows
-- Create New Tab
vim.keymap.set('n', 'te', ':tab sb<Return>', { silent = true })

-- Quite Tab
vim.keymap.set('n', 'tq', ':tabclose<Return>', { silent = true })

-- Switch Between Tabs
vim.keymap.set('n', 'tn', ':tabNext<Return>', { silent = true })
vim.keymap.set('n', 'tp', ':tabprevious<Return>', { silent = true })

-- Split Window
vim.keymap.set('n', 'sh', ':split<Return><C-w>w', { silent = true })
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Quite Window
vim.keymap.set('n', 'wq', '<C-w>q', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Remap For Moving Text while hilighting
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
