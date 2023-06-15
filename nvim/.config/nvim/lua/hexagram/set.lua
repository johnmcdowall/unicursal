-- Leader is SPACE
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Appearance
vim.opt.guifont = "berkeley mono" -- the font used in graphical neovim applications
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.showmode = false -- no need to show the mode, using lualine
vim.opt.cmdheight = 1    -- more space in the neovim command line for displaying messages
vim.opt.winbar = '%f %m' -- set the window title bar to show filename and modification status
vim.opt.laststatus = 3   -- use a global status line
vim.opt.scrolloff = 5

-- FILLCHARS
vim.opt.fillchars = {
  horiz     = '━',
  horizup   = '┻',
  horizdown = '┳',
  vert      = '┃',
  vertleft  = '┫',
  vertright = '┣',
  verthoriz = '╋',
  eob       = ' ',
  foldopen  = "▾",
  foldsep   = "│",
  foldclose = "▸",
}

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
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = true

-- Backups and Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = true     -- highlight them search matches.
vim.opt.incsearch = true    -- incremental search, please.
vim.opt.ignorecase = true   -- All your searches will be case insensitive
vim.opt.smartcase = true    -- Your search will be case sensitive if it contains an uppercase letter

-- Misc
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"
vim.opt.mouse = "a"
vim.opt.fileencoding = 'utf-8'

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
-- vim.opt.paste = true

-- NETRW settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Completion
vim.opt.wildmode = { "longest", "list", "full" }
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.wildoptions = "pum"

-- Cool floating window popup menu for completion on command line
vim.opt.pumblend = 0

vim.opt.iskeyword:append("-") -- consider string-string as whole word
