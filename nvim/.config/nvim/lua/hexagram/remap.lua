local default_opts = { noremap = true, silent = true }

local function merge(lhs, rhs)
  return vim.tbl_extend('force', lhs, rhs)
end

-- Just fucking use Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open Netrw" })

-- Double tapping space toggles back to last buffer
vim.keymap.set("n", "<Leader><Leader>", "<C-^>", merge(default_opts, { desc = "Toggle between last opened file"}))

-- Move visually highlighted blocks of text up and down wholesale
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move visually highlighted block down" } )
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc= "Move visually highlighted block up" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- Run the LSP Formatter
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Run the LSP formatter" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", default_opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", default_opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", default_opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", default_opts)

-- Resize windows with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", default_opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", default_opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", default_opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", default_opts)

-- Clear search highlight
vim.keymap.set("n", "<leader>h", ":nohl <CR>", default_opts)
