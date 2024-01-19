function SetColors(color)
	--color = color or "rose-pine" --this just means use rose-pine if it is available
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


require("solarized-osaka").setup({
  -- on_highlights = function(hl, c)
  --   local prompt = "#2d3149"
  --   hl.TelescopeNormal = {
  --     bg = c.bg_dark,
  --     fg = c.fg_dark,
  --   }
  --   hl.TelescopeBorder = {
  --     bg = c.bg_dark,
  --     fg = c.bg_dark,
  --   }
  --   hl.TelescopePromptNormal = {
  --     bg = prompt,
  --   }
  --   hl.TelescopePromptBorder = {
  --     bg = prompt,
  --     fg = prompt,
  --   }
  --   hl.TelescopePromptTitle = {
  --     bg = prompt,
  --     fg = prompt,
  --   }
  --   hl.TelescopePreviewTitle = {
  --     bg = c.bg_dark,
  --     fg = c.bg_dark,
  --   }
  --   hl.TelescopeResultsTitle = {
  --     bg = c.bg_dark,
  --     fg = c.bg_dark,
  --   }
  -- end,
})

SetColors()
