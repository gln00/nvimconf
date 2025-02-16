local function open_terminal ()
	local get_win_width = vim.api.nvim_win_get_width(0)
	local get_win_height = vim.api.nvim_win_get_height(0)

	vim.api.nvim_open_win(0, false, {relative='win', width=12, height=3, bufpos={30,50}})
end


vim.keymap.set('n', '<C-t>', open_terminal(), {noremap = true, silent = true})
