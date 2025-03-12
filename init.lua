local M = {}

vim.g.mapleader = '\\'
require("config.lazy")
require("config.options")
require("config.map")
require("modules.cppterm")
require("modules.comment")
require("modules.autocmd")

return M

