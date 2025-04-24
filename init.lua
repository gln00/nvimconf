local M = {}

require("config.lazy")
require("config.opt")
require("config.cmd")
require("config.map")

require("modules.github.github-actions")
require("modules.general.term")
require("modules.general.fold")
require("modules.php.autocmd")
require("modules.frontend.autocmd")
require("modules.frontend.highlight")

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.opt.laststatus = 3

return M

