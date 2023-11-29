-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("luasnip").config.set_config({
  enable_autosnippets = true,
  store_selection_keys = "`",
})

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })

vim.api.nvim_create_autocmds = {
  set_font = {
    {
      "UIEnter",
      "*",
      "call timer_start(200, { tid -> execute('if exists(''g:started_by_firenvim'')\nset guifont=FiraCode\\ Nerd\\ Font:h18\nendif')})",
    },
  },
}

vim.o.background = "light"
