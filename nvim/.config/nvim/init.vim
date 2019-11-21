"" 
"" ~/.config/nvim/init.vim
"" 

scriptencoding utf-8

"" Source the plugin init file
source ~/.config/nvim/plugins.vim

" ======================================================== "
"                      EDITING OPTIONS                     "
" ======================================================== "

" Remap leader key to ,
let g:mapleader=","

" Enable line numbers (relative)
set number relativenumber

" Yank and paste with the system clipboard
set clipboard=unnamed

" Hide buffers instead of closing them
set hidden

" -------------------------------------------------- "
" ===                Tab Spacing                 === "
" -------------------------------------------------- "

" Insert spaces when TAB is pressed
set expandtab

" Show existing tab with a width of two spaces
set tabstop=2

" Set number of spaces that a TAB counts for
set softtabstop=2

" Indentation amount for `<` and `>` commands
set shiftwidth=2

" Don not wrap long lines by default
set nowrap

" Don't highlight current cursor line
set nocursorline

" -------------------------------------------------- "
" ===              General Settings              === "
" -------------------------------------------------- "

" Use the filetype plugin
filetype plugin on

" Use the filetype plugin to determine indentation rules
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Copy indent from current line when starting a new line
set autoindent

" Enable the wild-menu
set wildmenu

" Split pane navigation
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" ======================================================== "
"                             UI                           "
" ======================================================== "

" Enable true color support
if ( has ( 'termguicolors' ) )
	set termguicolors
endif

" Editor theme
set background=dark

" Colorscheme
try
	"colorscheme onehalfdark
	colorscheme challenger_deep
	"colorscheme PaperColor
catch
	colorscheme slate
endtry

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Correct where (v)split panes appear
set splitbelow
set splitright

" ======================================================== "
"                        KEY MAPPING                       "
" ======================================================== "
"let g:vimwiki_list = [{'path': '~/.vimwiki',
"			\ 'syntax': 'markdown', 'ext': '.md'}]

" ======================================================== "
"                        KEY MAPPING                       "
" ======================================================== "

" -------------------------------------------------- "
" ===             NERDTree Settings              === "
" -------------------------------------------------- "
"	<leader>n - Toggle NERDTree on/off
"	<leader>f - Opens current file location in NERDTree
"nmap <leader>n :NERDTreeToggle<CR>
"nmap <leader>f :NERDTreeFind<CR>

" -------------------------------------------------- "
" ===              Page Navigation               === "
" -------------------------------------------------- "
"	<Space> - PageDown
"	`-`	- PageUp
noremap <Space> <PageDown>
noremap - <PageUp>

" ======================================================== "
"                           MISC.                          "
" ======================================================== "

" Save files you opened without write permissions via sudo
cmap w!! w !sudo tee %

" Ignore case when searching
set ignorecase

" Search case-sensative by searching string with an upper case letter
set smartcase

" Auto re-read file if changed outside of vim
set autoread

" Set backup policy
if ( has ( 'persistent_undo' ) )
	set undofile
	set undolevels=3000
	set undoreload=10000
endif

" Don't put backups in the pwd
set backupdir=~/.local/share/nvim/backup
set backup
set noswapfile

" Reload icons after init source
"if ( exists ( 'g:loaded_webdevicons' ) )
"	call vebdevicons#refresh()
"endif

" Disable automatic commenting of new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Auto reload nvim configuration on write
augroup myinithooks
	au!
	autocmd bufwritepost init.vim source ~/.config/nvim/init.vim
augroup END

