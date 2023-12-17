vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


vim.keymap.set("n", "<leader>-", vim.cmd.bprev)
vim.keymap.set("n", "<leader>=", vim.cmd.bnext)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>hm",":resize +10<CR>")--This will paste the command: ":resize +10" into the command prompt and press enter(<CR>) 
vim.keymap.set("n", "<leader>hl",":resize -10<CR>")
--vim.keymap.set("n", "<leader>hh",":resize 1000<CR>")

vim.keymap.set("n", "<leader>vm",":vertical resize +10<CR>")
vim.keymap.set("n", "<leader>vl",":vertical resize -10<CR>")
--vim.keymap.set("n", "<leader>vv",":vertical resize 1000<CR>")
