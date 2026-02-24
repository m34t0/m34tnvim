local popup = require("plenary.popup")

local height = 20
local width = 30
local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }

function Show_custom_popup(title, opts, cb)
  local pop_id = popup.create(opts, {
    title = title,
    line = math.floor(((vim.o.lines - height) / 2) - 1),
    col = math.floor((vim.o.columns - width) / 2),
    minwidth = width,
    minheight = height,
    borderchars = borderchars,
    callback = cb,
  })

  function Close_custom_popup()
    vim.api.nvim_win_close(pop_id, true)
  end

  local bufnr = vim.api.nvim_win_get_buf(pop_id)

  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua Close_custom_popup()<CR>", { silent = false })
end
