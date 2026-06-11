-- Keymaps and remaps of standard vim

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>i", function()
	vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { desc = "Toggle diagnostics" })

vim.keymap.set("n", "]g", function()
  vim.diagnostic.jump({
    count = 1,
    on_jump = function ()
      vim.diagnostic.open_float()
    end
  })
	vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
end, { desc = "Jump to next error" })

vim.keymap.set("n", "[g", function()
  vim.diagnostic.jump({
    count = -1,
    on_jump = function ()
      vim.diagnostic.open_float()
    end
  })
end, { desc = "Jump to prev error" })

vim.keymap.set("n", "<leader>d", function()
  vim.lsp.buf.definition()
end, { desc = "Jump to definition of symbol under cursor" })

vim.keymap.set("n", "<leader>pc", function()
  vim.fn.setreg("+", vim.fn.expand("%:."))
end, { desc = "Copy relative path to current file" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pcw", "\"+yiw", { desc = "Copy word under the cursor to clipboard" })
vim.keymap.set("n", "<leader>n", "<cmd>noh<CR>", { desc = "Remove highlight" })
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Replace selected in visual, but dont change register" })
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
