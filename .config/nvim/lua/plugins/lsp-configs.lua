return {
	{
		"neovim/nvim-lspconfig",
		vim.lsp.enable("pyright"),
		vim.lsp.enable("clangd"),
		vim.lsp.enable("lua_ls"),
		vim.lsp.enable("gopls"),
		vim.lsp.enable("rust_analyzer"),
		vim.lsp.enable("julials"),
	}
}
