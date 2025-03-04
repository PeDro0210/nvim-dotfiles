return {
  "goolord/alpha-nvim",
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local dashboard = require("alpha.themes.startify")
    -- dashboard.section.header.val = {
    --   [[ ASCII art lines here ]],
    --   [[ More ASCII art lines ]],
    -- }
    -- I'll do this later
    require("alpha").setup(dashboard.config)
  end,
}
