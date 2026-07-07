return {
  {
    "kevinhwang91/promise-async",
    lazy = true,
  },

  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    event = "VeryLazy",

    init = function()
      vim.o.foldcolumn = "1"
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,

    config = function()
      local ufo = require("ufo")

      ufo.setup({
        provider_selector = function(_, _, _)
          return { "treesitter", "indent" }
        end,
      })

      vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
      vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })
    end,
  },
}
