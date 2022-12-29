local poimandres_present, poimandres = pcall(require, "poimandres")
if not poimandres_present then
	vim.notify("poimandres not found!")
	return
end

poimandres.setup({
	disable_background = true,
	disable_float_background = true,
	disable_italics = false,
	bold_vert_split = true,
	dim_nc_background = true,
})

local colorscheme = "poimandres"
local present, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not present then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

local colors = require("poimandres.palette")

vim.cmd[[hi LineNr guibg=bg]]
vim.cmd[[hi foldcolumn guibg=bg]]
vim.api.nvim_set_hl(0, "WinSeparator", {fg=colors.background1})
vim.api.nvim_set_hl(0, "ColorColumn", {bg=colors.background1})
vim.api.nvim_set_hl(0, "FloatBorder", {bg=colors.background1})
