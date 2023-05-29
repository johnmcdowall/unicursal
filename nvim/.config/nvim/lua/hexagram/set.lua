-- Leader is SPACE
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Appearance
vim.opt.guifont = "berkeley mono"               -- the font used in graphical neovim applications
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.showmode = false                        -- no need to show the mode, using lualine
vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
vim.opt.winbar='%f %m'                          -- set the window title bar to show filename and modification status
vim.opt.laststatus=3                            -- use a global status line 

-- FILLCHARS 
vim.opt.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft  = '┫',
  vertright = '┣',
  verthoriz = '╋',
  eob = ' ',
  foldopen = "▾",
  foldsep = "│",
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
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Indents and Wrapping
vim.opt.smartindent = true
vim.opt.wrap = false

-- Backups and Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Misc
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.colorcolumn = "80"
vim.opt.mouse = "a"
vim.opt.fileencoding = 'utf-8'

-- Clipboard
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard

-- NETRW settings
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- Completion
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
