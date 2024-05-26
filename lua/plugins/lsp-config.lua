return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "omnisharp", "zls", "dockerls", "pyright"},
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig")

      lsp.lua_ls.setup({})
      lsp.clangd.setup({})
      lsp.omnisharp.setup({})
      lsp.zls.setup({})
      lsp.dockerls.setup({})
      lsp.pyright.setup({})
      lsp.arduino_language_server.setup({})

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "dg", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

    end
  }




}
