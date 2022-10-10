
vim.cmd [[
try
  colorscheme poimandres
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
