return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()

		require("lspconfig").yamlls.setup {}
		require("lspconfig").bashls.setup {}
		require("lspconfig").jsonls.setup {}
		require("lspconfig").dockerls.setup {}
		require("lspconfig").terraformls.setup {}
		require("lspconfig").ansiblels.setup {}

		-- Настройка Lua LSP (lua_ls)
		require("lspconfig").lua_ls.setup {
			settings = {
				Lua = {
					diagnostics = {
						globals = { 'vim', 'map' }
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						maxPreload = 10000,
						preloadFileSize = 10000,
					},
					telemetry = {
						enable = false,
					},
				},
			},
		}
	end,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
}
