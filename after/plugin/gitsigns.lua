-- https://www.reddit.com/r/neovim/comments/1djjc6q/statuscolumn_a_beginers_guide/

local gitsigns = require("gitsigns")

vim.opt.relativenumber = true

-- Uncomment to add line number in addition to relative line number
-- _G.StatusColumnWithGitSigns = function()
--   if vim.wo.number and vim.g.statusline_winid == vim.api.nvim_get_current_win() then
--     return vim.v.lnum .. " " .. "%=" .. vim.v.relnum .. " " .. "%=" .. gitsigns.statuscolumn() .. "│ "
--   else
--     return ""
--   end
-- end

-- vim.opt.statuscolumn = "%!v:lua.StatusColumnWithGitSigns()"

gitsigns.setup({
  signs = {
    add = { text = "a┃" },
    change = { text = "c┃" },
    delete = { text = "d_" },
    topdelete = { text = "t‾" },
    changedelete = { text = "~~" },
  },
  current_line_blame = true,
})
