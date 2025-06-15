return {
  "goolord/alpha-nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local dashboard = require("alpha.themes.startify")
    require("alpha").setup(dashboard.config)
  end,
}
