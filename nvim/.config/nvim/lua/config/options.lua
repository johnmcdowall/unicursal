-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.guifont = "BerkeleyMono Nerd Font Mono:h12"

-- Undercurl for iTerm2
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- mouse
vim.opt.mousemoveevent = true

-- blinking cursor
vim.opt.guicursor = {
  "n-v:block-blinkwait175-blinkoff150-blinkon175",
  "i-c-ci-ve:ver25",
  "r-cr:hor20",
  "o:hor50",
  "i:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
  "sm:block-blinkwait175-blinkoff150-blinkon175",
}

-- don't hide stuff from me
vim.opt.conceallevel = 0

-- Line Numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Splits
vim.opt.equalalways = true
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Indents and Wrapping
vim.opt.smartindent = false
vim.opt.autoindent = false
vim.opt.wrap = true

vim.opt.colorcolumn = "80,120"

-- Incclude dashes as part of word
vim.opt.iskeyword:append("-")

-- filetypes
vim.filetype.add({
  -- extension = {
  --   conf = "conf",
  --   env = "sh",
  --   tiltfile = "tiltfile",
  --   Tiltfile = "tiltfile",
  -- },
  -- filename = {
  --   [".env"] = "sh",
  --   ["tsconfig.json"] = "jsonc",
  --   [".yamlfmt"] = "yaml",
  -- },
  pattern = {
    ["%.xit"] = "xit",
    ["%.env%.[%w_.-]+"] = "sh",
    ["%.gitconfig%.[%w_.-]+"] = "gitconfig",
  },
})

vim.opt.fillchars = {
  horiz = "━",
  horizup = "┻",
  horizdown = "┳",
  vert = "┃",
  vertleft = "┫",
  vertright = "┣",
  verthoriz = "╋",
}

vim.g.lazygit_config = false
