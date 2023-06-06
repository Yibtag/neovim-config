-- Startup commands
vim.opt.number = true
vim.cmd[[ set shiftwidth=4 smarttab ]]

-- Plugins
require("plugins")
require("plugin.gruvbox")
require("plugin.lualine")
require("plugin.tree")
require("plugin.telescope")
require("plugin.treesitter")
require("plugin.runnable")
require("plugin.lsp")
require("plugin.autocomplete")
