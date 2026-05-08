return {
  "neovim/nvim-lspconfig",

  config = function()
    local lspconfig = require("lspconfig")

    -- blink.cmp capabilities (WICHTIG: ersetzt cmp_nvim_lsp komplett)
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    local on_attach = function(_, bufnr)
      local map = vim.keymap.set
      local opts = { buffer = bufnr, silent = true }

      map("n", "gd", vim.lsp.buf.definition, opts)
      map("n", "gr", vim.lsp.buf.references, opts)
      map("n", "K", vim.lsp.buf.hover, opts)
      map("n", "<leader>rn", vim.lsp.buf.rename, opts)
      map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end

    -- Beispiel LSPs (du kannst mehr hinzufügen)
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.ts_ls.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.pyright.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
}
