return {
    'rebelot/kanagawa.nvim', version = '*',
    lazy = false,
    priority = 1000,
    config = function()
	vim.cmd("colorscheme kanagawa-lotus")
    end
}
