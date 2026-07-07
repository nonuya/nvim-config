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

        vscLeftDark = "#050505",
        vscLeftMid = "#101010",
        vscLeftLight = "#1A1A1A",
      }
    })

    vim.cmd("colorscheme vscode") -- aplicar colorscheme
  end,
}
