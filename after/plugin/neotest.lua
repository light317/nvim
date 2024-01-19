local neotest = require("neotest")


neotest.setup({
  adapters = {
    require("neotest-dotnet"),
     require("neotest-rust")
  }
})


vim.keymap.set("n", "<leader>tv", function () --shows a side panel with all detected tests.
   neotest.summary.toggle()
end)

vim.keymap.set("n", "<leader>rt", function () --runs the test closest to the cursor
   neotest.run.run()
end)

vim.keymap.set("n", "<leader>rtf", function () --runs all tests in current file
   neotest.run.run(vim.fn.expand("%"))
end)

