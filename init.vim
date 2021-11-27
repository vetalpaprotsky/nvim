" Enable syntax highlighting.
syntax on

" Better colors.
set termguicolors

" Number of spaces in a <Tab>.
set tabstop=2
set softtabstop=2
set expandtab

" Enable autoindents.
set smartindent

" Number of spaces used for autoindents.
set shiftwidth=2

" Add line numbers.
set number
set relativenumber

" Columns used for the line number.
set numberwidth=4

" Highlight the matched text pattern when searching.
set incsearch
set nohlsearch

" Open splits intuitively.
set splitbelow
set splitright

" Navigate buffers without losing unsaved work.
set hidden

" Start scrolling when 8 lines from top or bottom.
set scrolloff=8

" Save undo history.
set undofile

" Case insensitive search unless capital letters are used.
set ignorecase
set smartcase

" Do not show mode.
set noshowmode

" Do not wrap lines.
set nowrap

" Always show git line changes column next to the number line.
set signcolumn=yes

" ******************** PLUGINS ********************

call plug#begin('~/.config/nvim/plugged')

" Color schemes.
Plug 'gruvbox-community/gruvbox'

" Telescope requires plenary to function.
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin: find, filter, preview, pick.
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs.
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Status line.
Plug 'itchyny/lightline.vim'

" Git support.
Plug 'tpope/vim-fugitive'

" Git lines diff.
Plug 'lewis6991/gitsigns.nvim'

" LSP.
Plug 'neovim/nvim-lspconfig'

" Autocompletion.
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

" Better language support.
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

call plug#end()

lua require('vetal')

" ******************** COLOR SCHEME ********************

" Declare your color scheme.
colorscheme gruvbox

" Use this for dark color schemes.
set background=dark

" ******************** MAPPINGS ********************

inoremap jk <ESC>
let mapleader = " "

" Telescope.
nnoremap <leader>ff <cmd>Telescope git_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
