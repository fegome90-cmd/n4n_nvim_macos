return {
  {
    "L3MON4D3/LuaSnip",
    keys = function()
      return {}
    end,
    config = function(_, opts)
      local ls = require("luasnip")
      -- Cargar configuración original de LazyVim/Gentleman
      ls.setup(opts)

      -- Cargar nuestros snippets personalizados VSCode-style
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })

      -- Keymaps para cambiar opciones en menús (Choice Nodes)
      -- Ctrl+l para siguiente opción
      vim.keymap.set({ "i", "s" }, "<C-l>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { silent = true })
      
      -- Ctrl+h para opción anterior
      vim.keymap.set({ "i", "s" }, "<C-h>", function()
        if ls.choice_active() then
          ls.change_choice(-1)
        end
      end, { silent = true })
    end,
  },
}
