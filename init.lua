require("config.lazy")
require("config.options")

vim.o.winborder = "rounded"

-- LSP
vim.diagnostic.config({
   virtual_text = true,
  -- virtual_lines = true
})
vim.lsp.enable("lua_ls")
vim.lsp.enable("cssls")
vim.lsp.enable("clangd")
vim.lsp.enable("ts_ls")
vim.lsp.enable("roslyn_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("ruff")
vim.lsp.enable("pyright")

---- KEYMAP
-- LSP
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gb', ":BufferLinePick<CR>", {desc = "Go to buffer"})
vim.keymap.set('n', '<leader>x', ":bp | bd #<CR>", {desc = "Close current buffer"})
vim.keymap.set("n", "<leader>fa", function()
    vim.lsp.buf.format({ async = true })
end, {desc = "Format all"})
vim.keymap.set(
    "n",
    "<leader>pv",
    "<cmd>VenvSelect<CR>",
    { desc = "Select Python venv" }
)
-- Buffer
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
vim.keymap.set({"n", "i"}, "<PageDown>", function()
   vim.cmd("BufferLineCycleNext")
end) 
vim.keymap.set({"n", "i"}, "<PageUp>", function()
   vim.cmd("BufferLineCyclePrev")
end) 
vim.keymap.set({"n", "i"}, "<S-PageDown>", function()
   vim.cmd("BufferLineMoveNext")
end) 
vim.keymap.set({"n", "i"}, "<S-PageUp>", function()
   vim.cmd("BufferLineMovePrev")
end) 
vim.keymap.set("n", "<C-s>", ":w<CR>", { silent = true })

-- Tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { silent = true })

vim.keymap.set("n", "<C-Down>", "<C-e>")
vim.keymap.set("n", "<C-Up>", "<C-y>")

vim.keymap.set("n", "<F8>", function()
  vim.diagnostic.goto_next({
    severity = vim.diagnostic.severity.ERROR,
    float = {
      border = "rounded",
      source = "if_many",
    },
  })
end, { desc = "Siguiente error" })

vim.keymap.set("n", "<S-F8>", function()
  vim.diagnostic.goto_prev({
    severity = vim.diagnostic.severity.ERROR,
    float = {
      border = "rounded",
      source = "if_many",
    },
  })
end, { desc = "Error anterior" })


-- Text-Objects KeyMaps
-- You can use the capture groups defined in `textobjects.scm`
vim.keymap.set({ "x", "o" }, "am", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@function.outer", "textobjects")
end, { desc = "Select around function" })

vim.keymap.set({ "x", "o" }, "im", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@function.inner", "textobjects")
end, { desc = "Select inside function" })

vim.keymap.set({ "x", "o" }, "ac", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@class.outer", "textobjects")
end, { desc = "Select around class" })

vim.keymap.set({ "x", "o" }, "ic", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@class.inner", "textobjects")
end, { desc = "Select inside class" })

vim.keymap.set({ "x", "o" }, "as", function()
  require("nvim-treesitter-textobjects.select")
    .select_textobject("@local.scope", "locals")
end, { desc = "Select local scope" })

-- Inlay
vim.keymap.set("n", "<F6>", function()
    local enabled = vim.lsp.inlay_hint.is_enabled()
    vim.lsp.inlay_hint.enable(not enabled)
end, { desc = "Toggle inlay hints" })
