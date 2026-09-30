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
})
