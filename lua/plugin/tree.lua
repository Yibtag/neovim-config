vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

require("nvim-tree").setup{
    diagnostics = {
	enable = true,
	icons = {
	    hint = "",
	    info = "",
	    warning = "",
	    error = "",
	}
    }
}


vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
