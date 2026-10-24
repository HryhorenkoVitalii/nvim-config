vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave", "InsertLeave" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! w")
      print("💾 Autosave: " .. vim.fn.expand("%:t"))
    end
  end,
})
