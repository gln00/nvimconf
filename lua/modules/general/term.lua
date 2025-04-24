vim.api.nvim_create_user_command("Term", function ()
  vim.cmd("belowright vertical new")
  vim.cmd("terminal")
  vim.cmd("setlocal nonumber norelativenumber ")
  vim.cmd("setlocal statusline=3 ")
  vim.cmd("vertical resize 60")
  vim.api.nvim_feedkeys("a", "n", false)
end, {})

vim.keymap.set("n", "<leader>t", ":w<CR>:Term<CR>", {silent = true, noremap = true})

vim.keymap.set("t", "<leader>o", "<C-\\><C-n>" ,{silent = true, noremap = true})
