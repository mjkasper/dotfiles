" ----------------------------------------------------------------------
" ---------------------------- nvim plugins ----------------------------
" ----------------------------------------------------------------------

" nvim plugins (to install open nvim and run :PlugInstall)
call plug#begin('~/.config/nvim/plugged')
" allows for viewing file trees inside of neovim
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" solarized colorscheme
Plug 'icymind/NeoSolarized'
" ctrlp for fuzzy file searching
Plug 'ctrlpvim/ctrlp.vim'
" more modern vim status bars
Plug 'itchyny/lightline.vim'
" block commenting plugin
Plug 'scrooloose/nerdcommenter'
" for changing brackets, braces, quotes, etc. around a chunk of text
Plug 'tpope/vim-surround'
call plug#end()

" ----------------------------------------------------------------------
" ------------------------ default color scheme ------------------------
" ----------------------------------------------------------------------

" use dark-solarized as default color scheme
set termguicolors
set background=dark
colorscheme NeoSolarized

" ----------------------------------------------------------------------
" ------------------------- nerd tree settings -------------------------
" ----------------------------------------------------------------------

" open nerdtree tab by default when opening a directory with vim
" Note: running `vim .` will open nerdtree but just running `vim` won't
let g:nerdtree_tabs_open_on_console_startup=2

" ----------------------------------------------------------------------
" ----------------------- nerd commenter settings ----------------------
" ----------------------------------------------------------------------

" add a single space after comment delimeters
let g:NERDSpaceDelims = 1
" use compact syntax for multi-line comments
let g:NERDCompactSexyComs = 1
" comment delimeters appear flush left regardless of indenation
let g:NERDDefaultAlign = 'left'
" trim trailing whitespace after commenting/uncommenting
let g:NERDTrimTrailingWhitespace = 1
" comment/uncomment even empty lines
let g:NERDCommentEmptyLines = 1
" allow toggling to check all selected lines, not just the first
let g:NERDToggleCheckAllLines = 1

" ----------------------------------------------------------------------
" ------------------------ line number settings ------------------------
" ----------------------------------------------------------------------

" use relative numbering (easier for some vim commands)
set number relativenumber

" ----------------------------------------------------------------------
" ------------------------- custom key bindings ------------------------
" ----------------------------------------------------------------------

" use ctrl-N to toggle nerd tree view
map <C-n> :NERDTreeToggle<CR>

