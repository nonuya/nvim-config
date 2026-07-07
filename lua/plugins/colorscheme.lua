return {
  "Mofiqul/vscode.nvim",
  lazy = false,    -- se carga al inicio
  priority = 1000, -- opcional, para que se cargue antes de otras cosas
  config = function()
    require("vscode").setup({
      color_overrides = {
        vscBack = "#000000",

        vscCursorDarkDark = "#000000",

        vscTabCurrent = "#0F0F0F",
        vscTabOther = "#090909",
        vscTabOutside = "#050505",

        vscLeftDark = "#0F0F0F",
        vscLeftMid = "#101010",
        vscLeftLight = "#1A1A1A",

        vscPopupBack = '#000000',
      },
      group_overrides = {
        cmakeKWtry_compile = {
          fg = "#569CD6",
          bg = "none",
          bold = true,
        },

        cmakeArguments = {
          bg = "none",
        },

        ModeMsg = {
          bg = "none",
        },
      }
    })

    vim.cmd("colorscheme vscode") -- aplicar colorscheme
  end,
}
