local neotest = require("neotest")


neotest.setup({
    adapters = {
        require("neotest-dotnet")({

             -- Provide any additional "dotnet test" CLI commands here. These will be applied to ALL test runs performed via neotest. These need to be a table of strings, ideally with one key-value pair per item.
      -- dotnet_additional_args = {
      --   "--no-build"
      -- },
        }),
        require("neotest-rust")
    }
})


vim.keymap.set("n", "<leader>tv", function()  --shows a side panel with all detected tests.
    neotest.summary.toggle()
end)

vim.keymap.set("n", "<leader>rt", function()  --runs the test closest to the cursor
    neotest.run.run()
end)

vim.keymap.set("n", "<leader>rtf", function()  --runs all tests in current file
    neotest.run.run(vim.fn.expand("%"))
end)
