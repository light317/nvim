require("oil").setup({
    -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
    -- Set to false if you still want to use netrw.
    default_file_explorer = false,
    use_default_keymaps = true,
})




vim.keymap.set("n", "<leader>ov", vim.cmd.Oil)
