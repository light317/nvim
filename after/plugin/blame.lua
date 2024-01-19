-- let g:gitblame_ignored_filetypes = ['netrw']
require('gitblame').setup {
    --Note how the `gitblame_` prefix is omitted in `setup`
    -- enabled = false,
    ignored_filetypes = { 'netrw' }
}
