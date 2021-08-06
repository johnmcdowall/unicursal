
"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

" Install vim-plugged if not already installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vimplugins')

" NVim's LSP
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Fuzzy finding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Completion
Plug 'hrsh7th/nvim-compe'

" Writing nvim configs in lua
Plug 'svermeulen/vimpeccable'

" Language Packs
Plug 'sheerun/vim-polyglot'

" https://github.com/styled-components/vim-styled-components/issues/75
Plug 'styled-components/vim-styled-components', { 'branch': 'develop' }

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" Vim Surround
Plug 'tpope/vim-surround'

" Auto pairs
Plug 'windwp/nvim-autopairs'

" Auto close tags
Plug 'alvan/vim-closetag'

" Multiple Cursors
Plug 'mg979/vim-visual-multi'

"" Indent guides
Plug 'Yggdroot/indentLine'

" Custom start page
Plug 'mhinz/vim-startify'

" Tabular auto-align
Plug 'godlygeek/tabular'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Emoji support
Plug 'junegunn/vim-emoji'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" Rainbow parens
Plug 'luochen1990/rainbow'

" Nord
Plug 'arcticicestudio/nord-vim'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'   }

" Ayu
Plug 'ayu-theme/ayu-vim'

call plug#end()
