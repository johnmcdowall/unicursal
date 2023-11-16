return {
  "synaptiko/xit.nvim",
  ft = "xit",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = function(_, opts)
    local options = {
      disable_default_highlights = false,
      disable_default_mappings = false,
      default_jump_group = "all", -- possible values: all, open_and_ongoing
      wrap_jumps = true,
    }
    require("xit").setup(options)
    -- vim.api.nvim_set_hl(0, "XitHeadline", { guifg = "#ffffff", bg = "#333333" })
    -- XitHeadline   xxx cterm=bold,underline gui=bold,underline guifg=#c8d3f5 guibg=#222436
  end,
}
