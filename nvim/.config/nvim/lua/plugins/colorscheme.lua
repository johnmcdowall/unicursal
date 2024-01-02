return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("poimandres").setup({
        bold_vert_split = true, -- use bold vertical separators
        dim_nc_background = true, -- dim 'non-current' window backgrounds
        disable_background = false, -- disable background
        disable_float_background = false, -- disable background for floats
        disable_italics = false, -- disable italics
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        vim.cmd("colorscheme poimandres")
        local colors = require("poimandres.palette")
        vim.api.nvim_set_hl(0, "FloatBorder", { fg = colors.teal1 })
      end,
    },
  },
}
