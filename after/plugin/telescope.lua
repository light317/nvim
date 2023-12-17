local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gfs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({search = vim.fn.input("Search > ")}); -- this allows us to search for tex within files.
	-- NOTE: this only looks into files within the directory that we ran nvim from
end)
