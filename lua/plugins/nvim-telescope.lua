local builtin = require('telescope.builtin')
return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
	    {"<leader>ff",builtin.find_files, desc = 'Find files in system'},
	    {"<leader>fg",builtin.live_grep, desc = 'Search in file'},
    }
}
