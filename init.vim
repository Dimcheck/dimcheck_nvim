"______________________________________________"
"__________.__               .__               " 
"\______   \  |  __ __  ____ |__| ____   ______"
" |     ___/  | |  |  \/ ___\|  |/    \ /  ___/"
" |    |   |  |_|  |  / /_/  >  |   |  \\___ \ "
" |____|   |____/____/\___  /|__|___|  /____  >"
"                    /_____/         \/     \/ "
"______________________________________________"
call plug#begin()

"Github Wrapper and Git diff marker
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"Quick brackets swap with cs'<q>
"To change 'Hello world' into <q>Hello World</q>
Plug 'tpope/vim-surround'

"Stylized tabline
Plug 'vim-airline/vim-airline'

"Languages support
Plug 'sheerun/vim-polyglot'

"Visual indentation
Plug 'nathanaelkane/vim-indent-guides'

"LSP and Autocompletion plugins
Plug 'neovim/nvim-lspconfig'             " Core LSP configurations
Plug 'hrsh7th/nvim-cmp'                  " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp'              " LSP source for nvim-cmp
Plug 'hrsh7th/cmp-buffer'                " Buffer source for nvim-cmp
Plug 'hrsh7th/cmp-path'                  " Path source for nvim-cmp
Plug 'hrsh7th/cmp-cmdline'               " Command-line source for nvim-cmp

"Snippet plugins (choose one)
Plug 'hrsh7th/cmp-vsnip'                 " Snippet integration with nvim-cmp
"Plug 'hrsh7th/vim-vsnip'                " Vsnip snippet engine

"Colorschemes
Plug 'vim-airline/vim-airline-themes'

call plug#end()

"___________________________________________"
"_________                _____.__        	"
"\_   ___ \  ____   _____/ ____\__| ____  	"
"/    \  \/ /  _ \ /    \   __\|  |/ ___\ 	"
"\     \___(  <_> )   |  \  |  |  / /_/  >	"
" \______  /\____/|___|  /__|  |__\___  / 	"	
"        \/            \/        /_____/ 		"
"___________________________________________"

" Load Lua configuration file
lua require('cmp_config')

"Show line numbers
set number

"Git diff check
set updatetime=100
set signcolumn=auto

"colorscheme C64
let g:airline_theme='bubblegum'



