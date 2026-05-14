local file_type_grp = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })
local treesitter_langs = require("m34t.treesitter_langs")

vim.api.nvim_create_autocmd("FileType", {
  pattern = treesitter_langs,
  group = file_type_grp,
  -- Enable highlight
  callback = function() vim.treesitter.start() end,
})
