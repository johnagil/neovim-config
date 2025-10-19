-- https://github.com/nvim-mini/mini.misc
-- makes terminal 'frame' around lazyvim the same color
return {
  {
    "nvim-mini/mini.nvim",
    version = false,
    config = function()
      local misc = require("mini.misc")

      -- enable terminal background sync
      misc.setup_termbg_sync()
    end,
  },
}
