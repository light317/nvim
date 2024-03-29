require('telescope').setup {
    defaults = {
        path_display = "truncate"
    },
    pickers = {
        lsp_references = {
            show_line = false,
            trim_text = true,
            path_display = "truncate"

        }
    }

}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gfs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gcm', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>pf', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Search > ") }); -- this allows us to search for tex within files.
    -- NOTE: this only looks into files within the directory that we ran nvim from
end)
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})
vim.keymap.set('n', '<leader>gi', builtin.lsp_implementations, {})
