vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.php",
  callback = function ()
    local templateText = {
      '<?php',
      '',
      'echo "Hello world";',
      '',
      '?>',
    }
    vim.api.nvim_put(templateText, "l", false, true)
    vim.api.nvim_win_set_cursor(0, {3,0})
    vim.cmd('normal! V')
  end
})
