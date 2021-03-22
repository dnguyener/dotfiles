" Plugin Configuration Files
call plug#begin('~/.nvim/plugged')
Plug 'akinsho/nvim-bufferline.lua'                            " bufferline
Plug 'b3nj5m1n/kommentary'                                    " comments
Plug 'glepnir/galaxyline.nvim'                                " status line
Plug 'hrsh7th/nvim-compe'                                     " completion
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'junegunn/gv.vim'                                        " git commit browser
Plug 'junegunn/goyo.vim'                                      " distraction free writing
Plug 'junegunn/limelight.vim'                                 " highlighter - goyo
Plug 'junegunn/vim-slash'                                     " Enhance in-buffer search experience
Plug 'kyazdani42/nvim-web-devicons'                           " icons for nvim-tree
Plug 'kyazdani42/nvim-tree.lua'                               " file explorer
Plug 'lewis6991/gitsigns.nvim'
Plug 'liuchengxu/vim-which-key'                               " keybinding menu
Plug 'onsails/lspkind-nvim'                                   " icons in autocompletion
Plug 'machakann/vim-highlightedyank'                          " required by vim-ripple
Plug 'machakann/vim-sandwich'                                 " pairs
Plug 'morhetz/gruvbox'                                        " gruvbox color theme
Plug 'neovim/nvim-lspconfig'                                  " languageserver
Plug 'nvim-lua/popup.nvim'                                    " depency for telescope
Plug 'nvim-lua/plenary.nvim'                                  " depency for telescope
Plug 'nvim-telescope/telescope.nvim'                          " fuzzy finder for different things
Plug 'nvim-telescope/telescope-project.nvim'                  " telescope for projects
Plug 'nvim-treesitter/nvim-treesitter', {'do':':TSUpdate'}    " language stuff
Plug 'phaazon/hop.nvim'                                       " easy motion
Plug 'psf/black'                                              " python formatter
Plug 'RRethy/vim-illuminate'                                  " highlight same words
Plug 'TimUntersberger/neogit'
Plug 'tools-life/taskwiki'                                    " task warrior integration
Plug 'tpope/vim-fugitive'                                     " git integration
Plug 'vimwiki/vimwiki'                                        " wiki
Plug 'vim-pandoc/vim-pandoc-syntax'                           " markdown
Plug 'windwp/nvim-autopairs'                                  " auto pairs
Plug 'norcalli/nvim-colorizer.lua'                            " colorizer
call plug#end()
"Plug 'kkoomen/vim-doge'                                       " Enhance in-buffer search experience
"Plug 'unblevable/quick-scope'                                 " f enhancment
"Plug 'yamatsum/nvim-web-nonicons'                             " icons
"Plug 'ojroques/nvim-hardline'                                 " simple statusline/buffline
"Plug 'Yggdroot/indentLine'                                    " display thin vertical lines at indentation
"Plug 'chriskempson/base16-vim'
"Plug 'hkupty/iron.nvim'                                       " repl
"Plug 'psliwka/vim-smoothie'                                   " smooth scrolling
"Plug 'ms-jpq/chadtree'                                        " file-explorer
"Plug 'rhysd/vim-gfm-syntax'                                   " gfm markdown syntax
"Plug 'airblade/vim-gitgutter'                                 " git gutter
"Plug 'zefei/vim-wintabs'                                      " Manage windows/buffers

" Colors - Has to be in this order
augroup qs_colors
  autocmd!
  autocmd ColorScheme * highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
augroup END
let g:gruvbox_contrast_dark='dark'
let g:gruvbox_invert_signs=0
let g:gitgutter_override_sign_column_highlight=1
colorscheme gruvbox

" General Configuration
filetype plugin on
set completeopt=menuone,noselect
set expandtab
set list
set listchars=eol:↲,tab:␉·,trail:␠,nbsp:⎵
set nu rnu
set number relativenumber
set shiftwidth=4
set showtabline=2
set softtabstop=4
set splitright
set splitbelow
set tabstop=4
set termguicolors
set timeoutlen=300
set updatetime=750

let g:vimwiki_list = [{'path': '~/vimwiki/',  'syntax': 'markdown',  'ext': '.md',  'auto_tags':0}]
let g:vimwiki_global_ext = 0
let g:black_linelength = 100
"
" Autocommands
autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

augroup pandoc_syntax
        au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" Include other files
luafile $HOME/.config/nvim/plugins.lua
luafile $HOME/.config/nvim/galaxyline.lua
luafile $HOME/.config/nvim/compose.lua
source $HOME/.config/nvim/keybindings.vimrc

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })
