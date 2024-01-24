-- let g:gitblame_ignored_filetypes = ['netrw']
local blame = require('gitblame').setup {
    --Note how the `gitblame_` prefix is omitted in `setup`
    -- enabled = false,
    ignored_filetypes = { 'netrw' }
} 

vim.keymap.set("n","<leader>blm", vim.cmd.GitBlameToggle)
