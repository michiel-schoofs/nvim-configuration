require("config.lazy")
require("config.treesitter")
require("config.indentblankline")
require("config.general-settings")
require("config.lsp")
require('nvim-treesitter').install { 'rust' }


--set general options
vim.api.nvim_set_option("clipboard", "unnamedplus")
