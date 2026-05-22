vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.c", "*.h", "*.cpp", "*.hpp" },
  callback = function()
    require("conform").format()
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local groups = {
      "Normal", "NormalNC", "NormalFloat",
      "SignColumn", "StatusLine", "StatusLineNC",
      "WinBar", "WinBarNC", "TabLine", "TabLineFill",
      "EndOfBuffer", "FoldColumn", "CursorLineNr",
    }
    for _, group in ipairs(groups) do
      vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
    end
  end,
})
