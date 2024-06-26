-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Nvim Copilopt
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Nvim File Explorer
vim.keymap.set({ "n", "v" }, "<leader>pv", vim.cmd.Ex)

vim.keymap.set({ "n" }, "<leader>k", function()
	local ln = vim.fn["line"](".") - 1
	local c = vim.v.count1
	for i = 1, c do
		vim.fn["append"](ln, "")
	end
	vim.cmd(":-" .. c)
end)

vim.keymap.set({ "n" }, "<leader>j", function()
	local ln = vim.fn["line"](".")
	local c = vim.v.count1
	for i = 1, c do
		vim.fn["append"](ln, "")
	end
	vim.cmd(":+" .. c)
end)

vim.keymap.set("n", "<Up>", "<Nop>")

-- select All
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Keymaps For Tabs and Windows
-- Create New Tab
vim.keymap.set("n", "te", ":tab sb<Return>", { silent = true })

-- Quite Tab
vim.keymap.set("n", "tq", ":tabclose<Return>", { silent = true })

-- Switch Between Tabs
vim.keymap.set("n", "tn", ":tabNext<Return>", { silent = true })
vim.keymap.set("n", "tp", ":tabprevious<Return>", { silent = true })

-- Split Window
vim.keymap.set("n", "sh", ":split<Return><C-w>w", { silent = true })
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true })

-- Scroll inside other windows
vim.keymap.set("n", "<M-u>", "<C-w>w<C-u><C-w>w")
vim.keymap.set("n", "<M-d>", "<C-w>w<C-d><C-w>w")

-- Best remap ever
vim.keymap.set("x", "<leader>P", '"+dP')

-- Remap For Moving Text while hilighting
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Better <C-u> ,<C-d>
vim.keymap.set({ "v", "n" }, "<C-u>", "<C-u>zz")
vim.keymap.set({ "v", "n" }, "<C-d>", "<C-d>zz")
