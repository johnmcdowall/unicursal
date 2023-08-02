local autogroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Highlight on yank
autocmd('TextYankPost', {
  group = autogroup('YankHighlight', { clear = true }),
  command = 'silent! lua vim.highlight.on_yank()',
})

-- remove whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
  group = my_augroup,
})

-- Format on save
autocmd('BufWritePost', {
  pattern = "*",
  command = 'silent! FormatWrite',
  group = my_augroup,
})

