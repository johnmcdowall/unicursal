"###################################################################################
"       __  ___                      _                    
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  ) 
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/  
"                 /_/    /_/               /____/         
"
"###################################################################################

"***********************************************************************************
" Main Vim Keybinds
"***********************************************************************************

"" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

noremap <Leader>h :nohl<CR>

"""""""""""
" Goyo    "
"""""""""""
nmap <F6> :Goyo<CR>

" Close all open buffers
nnoremap <Leader>x :bufdo bd<CR>

" Window Navigation
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l
" Horizontal split then move to bottom window.
nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
nnoremap <Leader>\| <C-w>v<C-w>l
" Cycle tabs with Tab and Shift+Tab
nnoremap<silent> <Tab> :bnext<CR>
nnoremap<silent> <S-Tab> :bprevious<CR>
" Kill buffer with Space+bk
nnoremap<silent> <Space>bk :bdelete<CR> 

" Indent controls
" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv
" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv

" Text alignment
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>

"***********************************************************************************

" Plugin specific keybinds

"***********************************************************************************
 
" Git keybinds
" Git status
nnoremap  <Leader>gs  :Git<cr>
" Git diff in split window
nnoremap  <Leader>gd  :Gdiffsplit<cr>
" Git commit
nnoremap  <Leader>gc  :Git commit<cr>
" Git push 
nnoremap  <Leader>gP  :Gpush<cr>
" Git pull 
nnoremap  <Leader>gp  :Gpull<cr>
" Git move 
nnoremap  <Leader>gm  :Gmove<cr>
" Git merge 
nnoremap  <Leader>gM  :Gmerge<cr>
" browse current file on web
nnoremap  <Leader>gb  :Gbrowse<cr>
" browse current line on web


" Trigger Markdown preview
nnoremap  <Leader>mp  :MarkdownPreview<cr>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" pasting
noremap <leader>y "*y
noremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>

" all the exits
:command! WQ wq
:command! Wq wq
:command! Q q
:command! W w
:command! Bd bd

" Text bubbling up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Keep the cursor in the middle of the screen when doing nexts
nnoremap n nzzzv
nnoremap N Nzzzv

" Keep the cursor where it was when doing join lines
nnoremap J mzJ`z

" Make Y behave like the other capital letters that do action from
" current cursor to end of line.
nnoremap Y yg$

" Force screen redraw
nnoremap U :syntax sync fromstart<cr>:redraw!<cr>

" maximize current split or return to previous 
noremap <C-w>m :MaximizerToggle<CR>

