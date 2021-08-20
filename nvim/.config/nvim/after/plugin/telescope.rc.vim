if !exists('g:loaded_telescope') | finish | endif

nnoremap <C-p> <cmd>Telescope find_files hidden=true<cr>
nnoremap <Leader>n <cmd>Telescope file_browser<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
		file_ignore_patterns = {"node_modules", ".git"},
		find_command = {'rg', '--files', '--hidden', '-g', '!node_modules/**'},
		vimgrep_arguments = {
      'rg',
			'--files',
			'--hidden',
			'-g',
			'!.git',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case'
    },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF
