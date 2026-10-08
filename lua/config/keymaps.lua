local wk = require("which-key")
local builtin = require("telescope.builtin")
wk.add({
	{ "<leader>f", group = "file" },
	{ "<leader>ft", "<cmd>Neotree left toggle<cr>", desc = "Toggle file explorer" },
	{ "<leader>fb", "<cmd>Neotree buffers float toggle<cr>", desc = "Toggle open buffers explorer" },
	{ "<leader>fg", "<cmd>Neotree git_status float toggle<cr>", desc = "Toggle git changes overview" },
	{ "<leader>ff", builtin.find_files, desc = "Find files" },
	{ "<leader>fg", builtin.live_grep, desc = "Find content" },
	{ "<leader>b", group = "buffer" },
	{ "<leader>bn", "<cmd>BufferNext<cr>", desc = "Move to the next buffer" },
	{ "<leader>bp", "<cmd>BufferPrevious<cr>", desc = "Move back to the previous buffer" },
	{ "<leader>bf", "<cmd>Format<cr>", desc = "Format current buffer" },
	{ "<leader>m", group = "Mason" },
	{ "<leader>mi", "<cmd>Mason<cr>", desc = "Open Mason" },
	{ "<leader>mu", "<cmd>MasonUpdate<cr>", desc = "Update Mason packages" },
	{ "<leader>d", group = "debug" },
	{ "<leader>ds", "<cmd>Telescope diagnostics<cr>", desc = "Show diagnostics" },
	{ "<leader>do", "<cmd>lua vim.diagnostic.open_float()<cr>", desc = "Show diagnostics in a floating window" },
	{ "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Go to next diagnostic" },
	{ "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<cr>", desc = "Go to previous diagnostic" },
	{ "<leader>r", group = "rust" },
	{ "<leader>rt", "<cmd>RustLsp codeAction<cr>", desc = "Run rust-analyzer code action" },
	{ "<leader>c", group = "cargo" },
	{ "<leader>ct", "<cmd>RustLsp openCargo<cr>", desc = "Open Cargo.toml" },
	{ "<leader>cr", "<cmd>RustLsp run<cr>", desc = "Run cargo run" },
})

local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
	"n",
	"K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
	function()
		vim.cmd.RustLsp({ "hover", "actions" })
	end,
	{ silent = true, buffer = bufnr }
)
