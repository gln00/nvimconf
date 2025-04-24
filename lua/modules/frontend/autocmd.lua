vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.html",
  callback = function ()
    local templateText = {
      '<!DOCTYPE html>',
      '<html lang="ru">',
      '<head>',
      '<meta charset="UTF-8">',
      '<title>TITLE</title>',
      '<link rel="stylesheet" href=" ">',
      '</head>',
      '<body>',
      '',
      '<script src=" "> </script>',
      '</body>',
      '</html>',
    }
    vim.api.nvim_put(templateText, "l", false, true)
    vim.cmd('normal ggVG=4jf>lvaw')
  end
})
