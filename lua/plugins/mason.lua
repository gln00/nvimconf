return {
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()

-- 	local on_attach = require("plugins.configs.lspconfig").on_attach
-- 	local capabilities = require("plugins.configs.lspconfig").capabilities
-- 	local lspconfig = require "lspconfig"
-- 	local servers = { "yamlls", "bashls", "pyright", "html", "cssls", "jsonls", "dockerls", "terraformls", "ansiblels", "tsserver", "emmet_ls" }
-- 	for _, lsp in ipairs(servers) do
-- 		lspconfig[lsp].setup {
-- 			on_attach = on_attach,
-- 			capabilities = capabilities,
-- 		}
-- 	end

		require("lspconfig").yamlls.setup {}
		require("lspconfig").bashls.setup {}
		require("lspconfig").pyright.setup {}
		require("lspconfig").html.setup {}
		require("lspconfig").cssls.setup {}
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
