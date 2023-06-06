require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
	"lua_ls",
	"clangd",
	"html",
	"cssls",
	"marksman",
	"tsserver",
	"rust_analyzer"
    }
})

local on_attach = function(_, bufnr)
    vim.keymap.set("n", "D", vim.lsp.buf.hover, {})
    vim.keymap.set("n", "<c-r>", vim.lsp.buf.rename, {})
    vim.keymap.set("n", "<c-d>", vim.lsp.buf.implementation, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require'lspconfig'.lua_ls.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

require'lspconfig'.clangd.setup{
    on_attach = on_attach,
    capabilities = capabilities, 
}

require'lspconfig'.html.setup{
    on_attach = on_attach,
    capabilities = capabilities, 
}

require'lspconfig'.cssls.setup{
    on_attach = on_attach,
    capabilities = capabilities, 
}

require'lspconfig'.marksman.setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

require'lspconfig'.tsserver.setup{
    on_attach = on_attach,
    capabilities = capabilities, 
}

require'lspconfig'.rust_analyzer.setup{
    on_attach = on_attach,
    capabilities = capabilities, 
}
