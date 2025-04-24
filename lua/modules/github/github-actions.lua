vim.cmd('highlight yamlFlowCollection guifg=red')
vim.cmd('highlight yamlFlowIndicator guifg=#800000')

vim.api.nvim_set_hl(0, "yamlGitHub", { fg = "#00CED1", bold = true })
vim.api.nvim_set_hl(0, "yamlGitHubName", { fg = "#FFD700" })
vim.cmd('hi link yamlGitHubName yamlString')

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
    pattern = {".github/workflows/*.yaml", ".github/workflows/*.yml"},
    callback = function()

        vim.fn.matchadd("yamlGitHub", [[\${{.\{}}}\|\v.*<uses:\s*\zs.*]], -1)
        vim.fn.matchadd("yamlGitHubName", [[\v.*<name:\s*\zs.*]], -1)

		-- Если строка закоментирована, то нужно переопределить на цвет комментария
        vim.fn.matchadd("Comment", [[\v^\s*#.*<name:\zs.*]], 1)
		vim.fn.matchadd("Comment", [[\v^\s*#.*\zs\$\{\{.*\}\}]], 1)
		vim.fn.matchadd("Comment", [[\v^\s*#.*<uses:\s*\zs.*]], 1)
    end
})
