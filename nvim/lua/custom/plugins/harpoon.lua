return {
	'ThePrimeagen/harpoon',
	config = function()
		vim.keymap.set('n', '<leader>z', function() require('harpoon.mark').add_file() end)
		local ui = require('harpoon.ui')
		vim.keymap.set('n', '<leader>ha', function() ui.toggle_quick_menu() end)
		vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
		vim.keymap.set('n', '<C-t>', function() ui.nav_file(2) end)
	end
}
