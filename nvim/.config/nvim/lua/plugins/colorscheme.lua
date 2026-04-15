return {
  -- add nord
  {
    "gbprod/nord.nvim",
    config = function()
      require("nord").setup({
        transparent = vim.g.neovide == nil,
        terminal_colors = true,
        diff = { mode = "bg" },
        borders = true,
        errors = { mode = "bg" },
        search = { theme = "vim" },
        styles = {
          comments = { italic = true },
          keywords = {},
          functions = {},
          variables = {},
        },

        on_highlights = function(highlights, c)
          highlights["TabLine"] = { fg = c.polar_night.light, bg = c.polar_night.bright }
          highlights["TabLineSel"] = { fg = c.frost.ice, bg = c.fg_gutter }
          highlights["LspInlayHint"] = { fg = c.aurora.yellow, italic = true }
        end,
      })
      require("nord").load()
    end,
  },

  -- Configure LazyVim to load nord
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nord",
    },
  },
}
