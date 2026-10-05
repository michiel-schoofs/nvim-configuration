return {
	"mason-org/mason-lspconfig.nvim",
	dependencies = {
		{ "mason-org/mason.nvim", opts = { Lazy = false, priority = 40 } },
		"neovim/nvim-lspconfig",
	},
	opts = {
		ensure_installed = { "lua_ls", "rust_analyzer" },
		automatic_enable = true,
	},
}
