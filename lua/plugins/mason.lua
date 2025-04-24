return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()

    require("lspconfig").yamlls.setup {}
    require("lspconfig").dockerls.setup {}
    require("lspconfig").ts_ls.setup {}

    require("lspconfig").phpactor.setup {
      root_dir = function(_)
        return vim.loop.cwd()
      end,
      init_options = { 
        ["language_server.diagnostics_on_update"] = true,
        ["language_server.diagnostics_on_open"] = true,
        ["language_server.diagnostics_on_save"] = true,
        ["language_server_phpstan.enabled"] = true,
        ["language_server_psalm.enabled"] = false,
      }
    }

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
