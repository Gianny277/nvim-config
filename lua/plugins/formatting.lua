return {
  {
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

        c = { "clang_format" },
        cpp = { "clang_format" },
        objc = { "clang_format" },
        objcpp = { "clang_format" },
        cuda = { "clang_format" },

        cmake = { "cmake_format" },
      },
    },
  },
}
