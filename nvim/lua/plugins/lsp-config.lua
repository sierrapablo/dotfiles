return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "dockerls",
          "bashls",
          "jsonls",
          "remark_ls",
          "ruff",
          "rust_analyzer",
          "sqlls",
          "pyright",
          "ts_ls",
          "tailwindcss",
          "eslint"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local config = require("mason-lspconfig")
      local on_attach = config.on_attach
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      -- lua_ls
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })

      -- dockerls
      lspconfig.dockerls.setup({
        capabilities = capabilities
      })

      -- bashls
      lspconfig.bashls.setup({
        capabilities = capabilities
      })

      --jsonls
      lspconfig.jsonls.setup({
        capabilities = capabilities
      })

      -- remark_ls
      lspconfig.remark_ls.setup({
        capabilities = capabilities
      })

      -- ruff
      lspconfig.ruff.setup({
        capabilities = capabilities
      })

      -- rust_analyzer
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities
      })

      -- sqlls
      lspconfig.sqlls.setup({
        capabilities = capabilities
      })

      -- pyright
      lspconfig.pyright.setup({
        on_attach = on_attach,
        filetypes = { "python" },
        capabilities = capabilities
      })

      -- TypeScript/Javascript
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
      })

      --TailwindCSS
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
        init_options = {
          userLanguages = {
            javascript = "javascript",
            javascriptreact = "javascriptreact",
            typescript = "typescript",
            typescriptreact = "typescriptreact"
          },
        },
      })

      -- ESLint
      lspconfig.eslint.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      })


      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
