local file_type_grp = vim.api.nvim_create_augroup("FileTypeSettings", { clear = true })
local treesitter_langs = require("m34t.treesitter_langs")

-- Enable highlight
vim.api.nvim_create_autocmd("FileType", {
  pattern = treesitter_langs,
  group = file_type_grp,
  callback = function() vim.treesitter.start() end,
})

-- Adjust height of qf menu
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    local min_height, max_height = 3, 10
    local height = math.min(math.max(vim.fn.line("$"), min_height), max_height)

    vim.cmd(height .. "wincmd _")
  end,
})
