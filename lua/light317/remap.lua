vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", "<leader>-", vim.cmd.bprev)
vim.keymap.set("n", "<leader>=", vim.cmd.bnext)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>hm", ":resize +10<CR>") --This will paste the command: ":resize +10" into the command prompt and press enter(<CR>)
vim.keymap.set("n", "<leader>hl", ":resize -10<CR>")
--vim.keymap.set("n", "<leader>hh",":resize 1000<CR>")

vim.keymap.set("n", "<leader>vm", ":vertical resize +10<CR>")
vim.keymap.set("n", "<leader>vl", ":vertical resize -10<CR>")
--vim.keymap.set("n", "<leader>vv",":vertical resize 1000<CR>")


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- these 2 allow us to move lines in visual mode.
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP") -- this persists whatever you yanked last

vim.keymap.set("n", "<leader>y", "\"+y")  -- these 3 will allow us to copy things into the system clipboard. whatever we yank like this can be pasted using CTRL + V
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("v", "<leader>y", "\"+y")


vim.keymap.set("n", "<leader>fv", "<cmd>Lexplore<CR>")


vim.keymap.set("n", "<leader>ooo", "<cmd>lua SetColors()<CR>")
vim.keymap.set("n", "<leader>ppp", function()
    print("test2")
end)
vim.keymap.set("n", "<leader>lll", "<cmd>Telescope buffers<CR>")
