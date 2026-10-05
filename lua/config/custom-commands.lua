vim.api.nvim_create_user_command("Format", function(args)
	local range = nil
	if args.count ~= -1 then
		local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
		range = {
			start = { args.line1, 0 },
			["end"] = { args.line2, end_line:len() },
		}
	end
	require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

--Ensure that all non neo-tree windows have line numbers enabled
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile", "WinEnter" }, {
	group = vim.api.nvim_create_augroup("EnsureLineNumbers", { clear = true }),
	pattern = "*",
	callback = function()
		if vim.bo.buftype == "" and vim.bo.filetype ~= "neo-tree" then
			vim.wo.relativenumber = true
			vim.wo.number = true
		end
	end,
})
