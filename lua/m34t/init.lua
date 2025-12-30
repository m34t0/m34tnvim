vim.cmd("language en_US")
vim.cmd([[set number]])
vim.cmd([[set autoread]])

vim.opt.spell = true
vim.opt.spelllang = "en_us,ru"
vim.opt.spelloptions = "camel"

require("m34t.lazy")
-- Remap of <leader> needs to be done before loading Lazy according to Lazy docs
require("m34t.remap")
require("m34t.lazyloading")
require("m34t.lsp")
require("m34t.completion")
