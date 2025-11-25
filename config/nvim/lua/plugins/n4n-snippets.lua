return {
  {
    "L3MON4D3/LuaSnip",
    config = function(_, opts)
      -- Cargar configuración original de LazyVim/Gentleman
      require("luasnip").setup(opts)

      -- Cargar nuestros snippets personalizados VSCode-style
      require("luasnip.loaders.from_vscode").lazy_load({
        paths = { vim.fn.stdpath("config") .. "/snippets" },
      })
    end,
  },
}
