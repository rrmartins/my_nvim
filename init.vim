"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------
set clipboard=unnamed
set number
set relativenumber
set mouse=a
set noswapfile
set updatetime=300 " Reduce time for highlighting other references
set hidden
set nobackup
set nowritebackup
set encoding=utf-8
set cmdheight=2



" let g:coc_node_path = trim(system('which node'))

let g:vim_bootstrap_langs = "elixir"
let g:vim_bootstrap_editor = "neovim"
let g:vim_bootstrap_theme = "molokai"
let g:vim_bootstrap_frams = ""

call plug#begin('~/.config/nvim/plugged')
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/grep.vim'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'editor-bootstrap/vim-bootstrap-updater'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'windwp/nvim-spectre'

let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
Plug 'Shougo/vimproc.vim', {'do': g:make}

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'projekt0n/github-nvim-theme'


" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'tpope/vim-fugitive'

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring'

" rails.vim: Ruby on Rails power tools
Plug 'tpope/vim-rails'

" Vim/Ruby Configuration Files
Plug 'vim-ruby/vim-ruby'

" Run Rspec specs from Vim
Plug 'thoughtbot/vim-rspec'

" Vim configuration files for Elixir http://elixir-lang.org/
Plug 'elixir-editors/vim-elixir'

Plug 'slashmili/alchemist.vim'

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tomasr/molokai'

Plug 'ludovicchabant/vim-gutentags'


"" Vim test
Plug 'vim-test/vim-test'
Plug 'kassio/neoterm'

"" Vim-Session
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

" elixir
Plug 'elixir-editors/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'

Plug 'APZelos/blamer.nvim'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

Plug 'danielwsx64/vim-tmux-runner'
" checkhealth nvim-treesitter

Plug 'noib3/nvim-compleet'

Plug 'petertriho/nvim-scrollbar'

Plug 'natecraddock/sessions.nvim'

" rust
" Vim racer
Plug 'racer-rust/vim-racer'

" Rust.vim
Plug 'rust-lang/rust.vim'

" Async.vim
Plug 'prabirshrestha/async.vim'

" Vim lsp
Plug 'prabirshrestha/vim-lsp'

" Asyncomplete.vim
Plug 'prabirshrestha/asyncomplete.vim'

" Asyncomplete lsp.vim
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'akinsho/bufferline.nvim', { 'branch': 'main' }

Plug 'wbthomason/packer.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'arcticicestudio/nord-vim', { 'on':  'NERDTreeToggle' }

Plug 'davidhalter/jedi-vim'
Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }

" Github Copilot
Plug 'github/copilot.vim'


" Alacritty
Plug 'Rigellute/rigel'
Plug 'pangloss/vim-javascript'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'williamboman/nvim-lsp-installer'

call plug#end()

filetype plugin indent on

syntax on

" Themes
" colorscheme molokai
" colorscheme nord
" colorscheme dracula
colorscheme rigel
set background=dark

set encoding=UTF-8

" let g:rehash256 = 1
" let g:molokai_original = 1

let g:dracula_italic = 0

"" Enable hidden buffers
"" set hidden

set number
set relativenumber
set termguicolors

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set autowrite

set mouse=a mousemodel=popup
set mouse=a mousemodel=popup_setpos

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

set autoread                              "Reload files changed outside vim

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set colorcolumn=80
" set foldmethod=indent
set cursorline

" let mapleader="\<space>"
let mapleader="l"

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <C-p> :Files<cr>
" nnoremap <C-f> :Ack<space>
nnoremap <C-r> :redo<cr><esc>
" nnoremap <C-j> :CtrlSF -filetype react 
nnoremap <leader>j :CtrlSF -filetype ruby
" nnoremap <C-f> :CtrlSF                  
nnoremap <leader>f :CtrlSF
nnoremap <C-o> :CtrlSFOpen<cr>
nnoremap <leader>t :CtrlSFToggle<CR>
inoremap <C-t> <Esc>:CtrlSFToggle<CR>
nnoremap <C-f> <ESC>/

nnoremap <leader>tn :tabnew<cr><esc>
nnoremap <leader>nt :NERDTreeToggle <CR><esc>
nnoremap <C-e> :e<cr>
nnoremap <C-o> :noh<cr><esc>
nnoremap <C-s> :w<cr><esc>
nnoremap <C-Q> :qa<cr><esc>
nnoremap <C-q> :q<cr><esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <Plug>CtrlPDefault     :CtrlP<CR>
nnoremap <silent> <Plug>CtrlPMixed       :CtrlPMixed<CR>
nnoremap <silent> <Plug>CtrlPMRU         :CtrlPMRU<CR>

nmap <silent> <Space>f       <Plug>CtrlPDefault
nmap <silent> <Space>m       <Plug>CtrlPMixed
nmap <silent> <Space>r       <Plug>CtrlPMRU

" run tests
nnoremap <leader>rs :TestFile<CR>
nnoremap <leader>rn :TestNearest<CR>
nnoremap <leader>rl :TestLast<CR>
nnoremap <leader>ra :TestSuite<CR>
nnoremap <leader>rv :TestVisit<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <C-d> <Plug>(coc-defintion)

" nnoremap <silent> K :call <SID>show_documentation()<CR>
" nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

nnoremap <leader>sn :SessionsSave! ~/.nvim/sessions<cr><esc>
nnoremap <leader>sso :SessionsLoad <cr><esc>

" rust
" Vim racer
" au FileType rust nmap gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gd <Plug>(rust-doc)

"" Open current line on GitHub
nnoremap <Leader>o :.Gbrowse<CR>

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Git commit --verbose<CR>
noremap <Leader>gsh :Git push<CR>
noremap <Leader>gll :Git pull<CR>
noremap <Leader>gs :Git<CR>
noremap <Leader>gb :Git blame<CR>
noremap <Leader>gd :Gvdiffsplit<CR>
noremap <Leader>gr :GRemove<CR>

noremap <leader>tc :za
noremap <leader>oaf :zR
noremap <leader>caf :zM
noremap <leader>oc :zo
noremap <leader>cc :zc
" za: Toggle code folding.
" zR: Open all folds.
" zM: Close all folds.
" zo: Open current fold.
" zc: Close current fold

"" bufferline
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>bn :BufferLineMoveNext<CR>
nnoremap <silent><leader>bp :BufferLineMovePrev<CR>


let g:session_autosave = 'yes'

nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR><ESC>' : @% == '' ? ':NERDTree<CR><ESC>' : ':NERDTreeFind<CR>'

" Copilot
" let g:copilot#key = '<C-Tab>'
imap <silent> <C-j> <Plug>(copilot-next)
imap <silent> <C-k> <Plug>(copilot-previous)
imap <silent> <C-\> <Plug>(copilot-dismiss)
imap <silent> <C-Tab> <Plug>(copilot-complete)



let test#strategy = "vtr"

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/snippets'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Use deoplete.
" let g:deoplete#enable_at_startup = 1

" use CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
      \ 'dir':  '(\.node_modules|node_modules|git|\.git|bin|coverage|spec\/cassettes)$' 
      \}
let g:ctrlp_show_hidden = 1


" Blamer
let g:blamer_prefix = ' > '


" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "yes"
let g:session_autosave = "yes"
let g:session_command_aliases = 1

" nerdtree
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : 'ig',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeGitSttausShowIgnored = 0
" let g:NERDTreeDirArrows=0
let g:NERDTreeIgnore=['\.DS_Store$', '\.git$', 'node_modules$', 'bin$', 'coverage$', 'cassettes$']
let g:NERDTreeUseSimpleIndicator = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowHidden=1
"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite,*node_modules/


autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

" Set specific linters
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1 
let g:airline#extensions#ale#enabled = 1


" let g:LanguageClient_serverCommands = {
"    \ 'ruby': ['~/.rvm/gems/default/gems/solargraph-0.39.8/bin/solargraph', 'stdio'],
"    \ }

" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>


" ruby
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

augroup vimrc-ruby
  autocmd!
  autocmd BufNewFile,BufRead *.rb,*.rbw,*.gemspec setlocal filetype=ruby
  autocmd FileType ruby set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END

augroup tmuxrunner
  autocmd!
  autocmd VimEnter * VtrAttachToPane
augroup END


let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

" Golang
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4 

let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_addtags_transform = "camelcase"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1



" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Ruby refactory
nnoremap <leader>rap  :RAddParameter<cr>
nnoremap <leader>rcpc :RConvertPostConditional<cr>
nnoremap <leader>rel  :RExtractLet<cr>
vnoremap <leader>rec  :RExtractConstant<cr>
vnoremap <leader>relv :RExtractLocalVariable<cr>
nnoremap <leader>rit  :RInlineTemp<cr>
vnoremap <leader>rrlv :RRenameLocalVariable<cr>
vnoremap <leader>rriv :RRenameInstanceVariable<cr>
vnoremap <leader>rem  :RExtractMethod<cr>


"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Git commit --verbose<CR>
noremap <Leader>gsh :Git push<CR>
noremap <Leader>gll :Git pull<CR>
noremap <Leader>gs :Git<CR>
noremap <Leader>gb :Git blame<CR>
noremap <Leader>gf :Gvdiffsplit<CR>
noremap <Leader>gr :GRemove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Opens an edit command with the path of the currently edited file filled in
noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"" Opens a tab edit command with the path of the currently edited file filled
noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

" ale
let g:ale_linters = {}

" Tagbar
nmap <silent> <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif

"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

set t_Co=16
syntax enable                   "Use syntax highlighting
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1

""" vim-devicons
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1
" The amount of space to use after the glyph character in vim-airline tabline(default '')
let g:WebDevIconsTabAirLineAfterGlyphPadding = ' '
" The amount of space to use before the glyph character in vim-airline tabline(default ' ')
let g:WebDevIconsTabAirLineBeforeGlyphPadding = ' '
let g:WebDevIconsOS = 'Darwin'



"""
" Ralis
"""

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_global_extensions = ['coc-solargraph']


" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()

lua <<EOF
  require('nvim-treesitter.configs').setup {
    -- One of "all"
    ensure_installed = "all",

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing
    ignore_install = { "javascript" },

    indent = {
      enable = true
    },

    highlight = {
      -- `false` will disable the whole extension
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
    },
  }
EOF

" lua <<EOF
"  require('telescope').setup{
"     defaults = {
"       preview = false,
"     }
"   }

"   require('telescope').load_extension('fzf')
" EOF

lua <<EOF
  require("packer").startup(function()
    use({
      "noib3/nvim-compleet",
      config = function()
        require("compleet").setup()
      end,
      run = "./install.sh release",
    })
  end)
EOF

lua <<EOF
  require("scrollbar").setup({
    show = true,
    show_in_active_only = false,
    set_highlights = true,
    folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
    max_lines = false, -- disables if no. of lines in buffer exceeds this
    handle = {
        text = " ",
        color = nil,
        cterm = nil,
        highlight = "CursorColumn",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = {
            text = { "-", "=" },
            priority = 0,
            color = nil,
            cterm = nil,
            highlight = "Search",
        },
        Error = {
            text = { "-", "=" },
            priority = 1,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextError",
        },
        Warn = {
            text = { "-", "=" },
            priority = 2,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextWarn",
        },
        Info = {
            text = { "-", "=" },
            priority = 3,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextInfo",
        },
        Hint = {
            text = { "-", "=" },
            priority = 4,
            color = nil,
            cterm = nil,
            highlight = "DiagnosticVirtualTextHint",
        },
        Misc = {
            text = { "-", "=" },
            priority = 5,
            color = nil,
            cterm = nil,
            highlight = "Normal",
        },
    },
    excluded_buftypes = {
        "terminal",
    },
    excluded_filetypes = {
        "prompt",
        "TelescopePrompt",
    },
    autocmd = {
        render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
        },
        clear = {
            "BufWinLeave",
            "TabLeave",
            "TermLeave",
            "WinLeave",
        },
    },
    handlers = {
        diagnostic = true,
        search = false, -- Requires hlslens to be loaded, will run require("scrollbar.handlers.search").setup() for you
    },
  })
EOF

lua <<EOF
  require("sessions").setup({
    events = { "WinEnter" },
    session_filepath = ".nvim/session",
  })
EOF

lua <<EOF
  require('bufferline').setup{
    options = {
        numbers = "none", -- "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
        mode = "tabs", -- set to "tabs" to only show tabpages instead
        name_formatter = function(buf)  -- buf contains a "name", "path" and "bufnr"
          -- remove extension from markdown files for example
          if buf.name:match('%.md') then
            return vim.fn.fnamemodify(buf.name, ':t:r')
          end
        end,
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 18,
        diagnostics = "nvim_lsp",-- "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          return "("..count..")"
        end,
        color_icons = true, -- whether or not to add the filetype icon highlights
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_buffer_default_icon = true, -- whether or not an unrecognised filetype should show a default icon
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        separator_style = "slant", -- "slant" | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        indicator = {
          icon = '▎', -- this should be omitted if indicator style is not 'icon'
          style = 'underline' -- 'icon' | 'underline' | 'none',
        },
        offsets = {
          {
            filetype = "NERDTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true, -- use a "true" to enable the default, or set your own character
          }
        }
    }
  }
EOF

lua << EOF
  local use = require('packer').use
  require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  end)

  require('lspconfig').pyright.setup{}
  require('lspconfig').elixirls.setup{
    cmd = { "/Users/rrmartins/.elixir-ls/release/language_server.sh" }; 
  }

  -- require('lspconfig').gopls.setup{}
  require('lspconfig').grammarly.setup{}
  require('lspconfig').golangci_lint_ls.setup{}

  require('lspconfig').solargraph.setup{
    cmd = {"solargraph", "stdio"},
    filetypes = {"ruby"},
    init_options = {formatting = true},
    settings = {
        solargraph = {
           autoformat = false,
           formatting = false,
           completion = true,
           diagnostic = true,
           folding = true,
           references = true,
           rename = true,
           symbols = true
        }
    }
  }

  local nvim_lsp = require('lspconfig')

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    -- See `:help vim.lsp.*` for documentation on any of the below functions
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)

  end

  -- Use a loop to conveniently call 'setup' on multiple servers and
  -- map buffer local keybindings when the language server attaches
  local servers = { "solargraph" }
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
            on_attach = on_attach,
            flags = {
              debounce_text_changes = 150,
            }
    }
  end

EOF


" lua <<EOF
"   require('compleet').setup({
"     ui = {
"       menu = {
"         -- Where to anchor the completion menu, either "cursor" or "match".
"         anchor = "cursor",

"         -- Whether to automatically show the menu every time there are
"         -- completions available.
"         autoshow = true,

"         -- The maximum height (in rows) of the completion menu.
"         max_height = nil,

"         border = {
"           -- Whether to add a border to the completion menu's floating window.
"           enable = false,

"           -- Any of the style formats listed in `:h nvim_open_win`.
"           style = "single"
"         },
"       },

"       details = {
"         border = {
"           -- Whether to add a border to the details's floating window.
"           enable = true,

"           -- Same as `ui.menu.border.style`.
"           style = {
"             "",
"             "",
"             "",
"             {" ", "CompleetDetails"},
"           }
"         },
"       },

"       hint = {
"         -- Whether to show completion hints.
"         enable = false,
"       }
"     },

"     completion = {
"       -- Whether to enable completion while deleting characters.
"       while_deleting = false,
"     },

"     sources = {
"       lipsum = {
"         enable = false,
"       },
"     }
"   })
" EOF
"

nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
