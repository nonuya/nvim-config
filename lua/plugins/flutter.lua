return {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function ()
      -- alternatively you can override the default configs
      require("flutter-tools").setup {
        flutter_path = "/home/ceres/flutter_sdk/flutter/bin/flutter", -- <-- this takes priority over the lookup
        flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
      }
    end
}
