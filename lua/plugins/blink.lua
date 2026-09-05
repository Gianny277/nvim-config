local LazyVim = require("lazyvim.util")

return {
  {
    "saghen/blink.cmp",

    opts = {
      keymap = {
        preset = "enter",

        -- Copilot akzeptieren, sonst Snippet/normaler Tab
        ["<Tab>"] = {
          LazyVim.cmp.map({ "ai_accept" }),
          "snippet_forward",
          "fallback",
        },

        -- Ausschließlich Blink akzeptieren
        ["<CR>"] = {
          "select_and_accept",
          "fallback",
        },

        ["<S-Tab>"] = {
          "snippet_backward",
          "fallback",
        },
      },

      completion = {
        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },

        menu = {
          border = "rounded",
          max_height = 12,

          draw = {
            columns = {
              { "kind_icon" },
              { "label", "label_description", gap = 1 },
              { "kind" },
              { "source_name" },
            },

            treesitter = { "lsp" },
          },
        },

        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,

          window = {
            border = "rounded",
          },
        },

        -- Verhindert doppelten grauen Text neben Copilot
        ghost_text = {
          enabled = false,
        },
      },

      -- Parameteranzeige bei Funktion(
      signature = {
        enabled = true,

        window = {
          border = "rounded",
          show_documentation = false,
        },
      },
    },
  },
}
