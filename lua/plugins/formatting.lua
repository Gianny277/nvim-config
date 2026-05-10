return {
  "stevearc/conform.nvim",

  opts = {
    formatters_by_ft = {
      lua = { "stylua" },

      javascript = { "biome" },
      typescript = { "biome" },
      javascriptreact = { "biome" },
      typescriptreact = { "biome" },

      json = { "biome" },
      css = { "biome" },
      html = { "biome" },

      go = { "goimports", "gofumpt" },
    },

    format_on_save = {
      timeout_ms = 2000,
      lsp_fallback = true,
    },
  },
}
