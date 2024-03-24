require("os")

local lsp_zero = require('lsp-zero')

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()


cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),

        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
    }, {
        { name = 'buffer' },
    })
})

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    --lsp_zero.default_keymaps({buffer = bufnr})
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)


    if client.server_capabilities.signatureHelpProvider then
        require('lsp-overloads').setup(client, {
            keymaps = {
                next_signature = "<A-j>",
                previous_signature = "<A-k>",
                next_parameter = "<A-l>",
                previous_parameter = "<A-h>",
                close_signature = "<A-s>"
            },
        })
    end
end)

lsp_zero.set_sign_icons({
    error = '',
    warn = '',
    hint = '',
    info = '',
    other = ''
})



require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls' },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
        -- rust_analyzer = function()
        --     require("lspconfig").rust_analyzer.setup({
        --     capabilities = capabilities,
        --     on_attach = on_attach,

        --     cmd = {"rustup", "run", "stable", "rust-analyzer"}
        --     })end
    },
})


-- c_sharp specific configs
local pid = vim.fn.getpid()
require("lspconfig").omnisharp.setup({
    -- We rerouting the definition check through the extension, if the item is from an external source, it will decompile the source and take you there.
    handlers = {
        ["textDocument/definition"] = require('omnisharp_extended').handler,
    },
    cmd = { "C:\\Users\\mouss\\AppData\\Local\\omnisharp-vim\\omnisharp-roslyn\\omnisharp.exe", "--languageserver", "--hostPID", tostring(pid) }
})

lsp_zero.setup_servers({ 'lua_ls', 'angularls', 'tsserver' })

require("luasnip.loaders.from_vscode").lazy_load()
