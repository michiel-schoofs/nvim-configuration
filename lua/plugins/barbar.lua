return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
		"nvim-tree/nvim-web-devicons"
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	lazy = false,
	opts = {
		animation = false,
		auto_hide = 1,
		insert_at_end = true,
		semantic_letters = true,
		sidebar_filetypes = {
			['neo-tree'] = {event = 'BufWipeout'}
		}
	},
	priority = 60,
	version = "^1.0.0",
}
