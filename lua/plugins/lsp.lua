return {
  {
    "neovim/nvim-lspconfig",

    opts = {
      servers = {
        lua_ls = {},
        vtsls = {},
        pyright = {},
        html = {},
        cssls = {},
        tailwindcss = {},
        gopls = {},
      },
    },
  },
}
