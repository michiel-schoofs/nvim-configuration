return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    opts = {
        close_if_last_window = true,
    },
    config = function(_, opts)
        require("neo-tree").setup(opts)
	vim.cmd("Neotree left")
    end,
    keys = {
	{ "<leader>ft", "<cmd>Neotree left toggle<cr>", desc = "Toggle file explorer" },
	{ "<leader>fb", "<cmd>Neotree buffers float toggle<cr>", desc="Toggle open buffers explorer" },
	{ "<leader>fg", "<cmd>Neotree git_status float toggle<cr>", desc="Toggle git changes overview" }
    },
    priority = 50
}
