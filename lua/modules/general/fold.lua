-- Options
vim.opt.foldmethod = 'marker'-- {{{
vim.opt.foldclose = 'all'
vim.opt.foldenable = true
vim.opt.sessionoptions = 'folds'
vim.opt.foldcolumn = 'auto'
vim.opt.foldtext = "v:lua.MyFoldText()" -- }}}

-- Cmd
vim.cmd.highlight("Folded guifg=#a0a0a0")
vim.cmd.highlight("FoldColumn guifg=#D6AE01")

-- Function
function _G.MyFoldText()
  local line = vim.fn.getline(vim.v.foldstart)
  local cut_line = line:match("^(.-)%s*%-%-")
  local lines = vim.v.foldend - vim.v.foldstart + 1
  return '▶ ' .. cut_line:gsub('\t', '  ') .. ' … (' .. lines .. ' lines)'
end
