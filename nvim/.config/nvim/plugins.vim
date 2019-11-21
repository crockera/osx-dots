"" 
"" ~/.config/nvim/plugins.vim
""

" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

call plug#begin('~/.local/share/nvim/plugged')

" -------------------------------------------------------- "
" ---                     Editing                      --- "
" -------------------------------------------------------- "

" Auto-close plugin
Plug 'rstacruz/vim-closer'

" Vim-closetag - auto-close html tags
Plug 'alvan/vim-closetag'

" -------------------------------------------------------- "
" ---                      Syntax                      --- "
" -------------------------------------------------------- "

" Syntax highlighting for javascript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

" Typescript syntax highlighting
Plug 'HerringtonDarkholme/yats.vim'

" nginx config syntax
Plug 'chr4/nginx.vim'

" -------------------------------------------------------- "
" ---                        UI                        --- "
" -------------------------------------------------------- "

" File explorer
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Colorscheme
Plug 'mhartington/oceanic-next'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Icons
Plug 'ryanoasis/vim-devicons'

" Vim-wiki
Plug 'vimwiki/vimwiki'

" ============================================================================ "
" ===                             INITIALIZE                               === "
" ============================================================================ "

call plug#end()

