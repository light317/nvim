local dap = require('dap')

dap.adapters.coreclr = {
    type = 'executable',
    command = 'C:\\Users\\mouss\\source\\repos\\netcoredbg\\build\\bin\\netcoredbg.exe',
    args = { '--interpreter=vscode' }
}

dap.configurations.cs = {
    {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        -- console = "integratedTerminal",
        program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/net8.0', 'file')
        end,
    },
}

vim.keymap.set('n','<F5>', function() dap.continue() end)
vim.keymap.set('n','<F10>', function() dap.step_over() end)
vim.keymap.set('n','<F11>', function() dap.step_into() end)
vim.keymap.set('n','<F12>', function() dap.step_out() end)
vim.keymap.set('n','<leader>b', function() dap.toggle_breakpoint() end)
-- vim.keymap.set('n','<Leader>B', dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')), {})
-- vim.keymap.set('n','<Leader>lp', dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')), {})
-- vim.keymap.set('n','<Leader>dr', dap.repl.open(), {})
vim.keymap.set('n','<leader>dl', function() dap.run_last() end)
