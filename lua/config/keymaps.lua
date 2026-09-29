local wk = require("which-key")
wk.add({
	{ "<leader>f", group = "file" },
	{ "<leader>b", group = "buffer" },
	{ "<leader>bn", "<cmd>BufferNext<cr>", desc="Move to the next buffer" },
	{ "<leader>bb", "<cmd>BufferPrevious<cr>", desc="Move back to the previous buffer" }
})
