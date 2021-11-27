"g Plugins will be downloaded under the specified directory.
call plug#begin('~/config/nvim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons' " file drawer
" Plug 'ervandew/supertab'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'luochen1990/rainbow'
" Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'thoughtbot/vim-rspec'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-fugitive'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'kylef/apiblueprint.vim'
Plug 'tpope/vim-bundler'
" Plug 'wakatime/vim-wakatime'
" Plug 'junegunn/vim-github-dashboard'
" Plug 'ecomba/vim-ruby-refactoring'
Plug 'szw/vim-tags'
Plug 'mileszs/ack.vim'
Plug 'szw/vim-maximizer'
" Plug 'fatih/vim-go'
Plug 'w0rp/ale'
" Plug 'rizzatti/dash.vim'
Plug 'voldikss/vim-floaterm'
Plug 'danilamihailov/beacon.nvim'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-rhubarb'
Plug 'terryma/vim-multiple-cursors'

Plug 'mattn/gist-vim'
Plug 'jfo/hound.vim'

Plug 'tpope/vim-eunuch'

Plug 'hashivim/vim-terraform'

Plug 'noprompt/vim-yardoc'

Plug 'kchmck/vim-coffee-script'

Plug 'github/copilot.vim'

" colorschemes
Plug 'crusoexia/vim-monokai'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'doums/darcula'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'jaredgorski/SpaceCamp'
Plug 'TroyFletcher/vim-colors-synthwave'
Plug 'zabanaa/neuromancer.vim'
Plug 'folke/tokyonight.nvim'
Plug 'rakr/vim-one'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'skanehira/docker-compose.vim'

Plug 'pechorin/any-jump.vim'
"
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Remap arrow keys to NOTHING
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

tnoremap <Esc> <C-\><C-n>

set number
set relativenumber

syntax on

set guifont=Fira\ Code:h12

" Lightline configs
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" Colorscheme selection
" colorscheme greenvision
" colorscheme onehalfdark
" colorscheme onehalflight

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:airline_theme='one'
set background=dark
let g:one_allow_italics=1
colorscheme one

let g:rainbow_active = 1

" Nerdtree

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:nerdtree_tabs_open_on_console_startup=1
"let g:NERDTreeMinimalUI=2
"let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', 'pycache']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
"let g:nerdtree_tabs_focus_on_files=1
"let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20
let g:NERDTreeDirArrowExpandable = '‚ñ∏'
let g:NERDTreeDirArrowCollapsible = '‚ñæ'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTreeToggle

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "‚úπ",
    \ "Staged"    : "‚úö",
    \ "Untracked" : "‚ú≠",
    \ "Renamed"   : "‚ûú",
    \ "Unmerged"  : "‚ïê",
    \ "Deleted"   : "‚úñÔ∏è",
    \ "Dirty"     : "‚úó",
    \ "Clean"     : "‚úîÔ∏èÔ∏é",
    \ "Unknown"   : "?"
    \ }

let g:mustache_abbreviations = 1

" FZF
nmap <Leader>b :Buffers<CR>
nmap <C-r> :BTags<CR>
nmap <C-p> :Files<CR>
nmap <C-g> :BLines<CR>
nmap <C-h> :Rg<CR>
nmap <Leader>f :GFiles?<CR>


set textwidth=80
set colorcolumn=+1

"" Git
noremap <Leader>ga :!git add .<CR>
noremap <Leader>gc :!git commit -m '<C-R>="'"<CR>
noremap <Leader>gsh :!git push<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" Let Ale run only on file save
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

let g:floaterm_keymap_toggle = '<Leader>e'

set lcs+=space:¬

set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=‚Ü™
set noswapfile
set nobackup
set nowritebackup
set expandtab

" set spell spelllang=en_us

map <Leader>t :TestFile<CR>
map <Leader>s :TestNearest<CR>
map <Leader>l :TestLast<CR>
map <Leader>a :TestSuite<CR>
let g:rspec_command = "!bundle exec rspec --drb {spec} -f progress; afplay /System/Library/Sounds/Blow.aiff"

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
" indent
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" monokai overrides for aligns
" hi IndentGuidesOdd  ctermbg=grey
" hi IndentGuidesEven ctermbg=lightgrey

set guioptions=

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ackprg = 'ag --vimgrep'

noremap <Leader>g_ :Goyo<CR>

noremap U <C-R>

" set noshowmode

imap jw <Esc>
imap jk <Esc>

let g:vimrubocop_rubocop_cmd = 'bundle exec rubocop '

if executable('solargraph')
  " gem install solargraph
  au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif

nnoremap <SPACE> <Nop>
map <Space> <Leader>
