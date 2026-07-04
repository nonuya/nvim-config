return {
   "Mofiqul/vscode.nvim",
   lazy = false,           -- se carga al inicio
   priority = 1000,        -- opcional, para que se cargue antes de otras cosas
   config = function()
      vim.cmd("colorscheme vscode") -- aplicar colorscheme
   end,
}
