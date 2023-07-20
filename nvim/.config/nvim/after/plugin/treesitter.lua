require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "javascript",
    "typescript",
    "c",
    "lua",
    "rust",
    "go",
    "ruby",
    "css",
    "tsx",
    "yaml",
    "html",
    "markdown",
    "markdown_inline",
    "vue",
    "vim",
    "dockerfile"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  autopairs = {
		enable = true,
	},

  autotag = {
    enable = true,
    enable_rename = true,
    enable_close = true,
    filetypes = { "html" , "xml", "eruby" },
  },

  -- enable indentation
  indent = {
    enable = true,
    --disable = {"python", "go", "ruby"},
  },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
