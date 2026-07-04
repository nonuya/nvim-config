return {
  "numToStr/Comment.nvim",
  opts = {},
  keys = {
    {
      "<leader>/",
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      mode = "n",
      desc = "Toggle comment",
    },
    {
      "<leader>/",
      "<Esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      mode = "x",
      desc = "Toggle comment",
    },
  },
}
