return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "css",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "ruby",
        "rust",
        "scss",
        "sql",
        "svelte",
        "xit",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
          xit = "xit",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
      vim.treesitter.language.register("xit", "xit")
    end,
  },
}
