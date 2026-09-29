vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "WinEnter" }, {
	group = vim.api.nvim_create_augroup("EnsureLineNumbers", { clear = true }),
	pattern = "*",
	callback = function()
		if vim.bo.buftype == "" and vim.bo.filetype ~= "neo-tree" then
			vim.wo.relativenumber = true
			vim.wo.number = true
		end
	end
})
