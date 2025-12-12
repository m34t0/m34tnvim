vim.cmd("language en_US")
vim.cmd([[set number]])
vim.cmd([[set autoread]])
vim.cmd([[set spell]])
vim.cmd([[set spelllang=en,ru]])
vim.cmd([[set spelloptions=camel]])

vim.opt.relativenumber = true
vim.cmd([[let &stc='%#NonText#%{&nu?v:lnum:""}%=%{&rnu&&(v:lnum)?"\ ".v:relnum:""}%#LineNr#%{&rnu&&!(v:lnum)?"\ ".v:relnum:""} ']])

require("m34t.lazy")
-- Remap of <leader> needs to be done before loading Lazy according to Lazy docs
require("m34t.remap")
require("m34t.lazyloading")
require("m34t.lsp")
require("m34t.completion")
