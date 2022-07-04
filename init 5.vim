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



let g:coc_node_path = trim(system('which node'))

let g:vim_bootstrap_langs = "elixir"
let g:vim_bootstrap_editor = "neovim"
let g:vim_bootstrap_theme = "dracula"
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

Plug  'ctrlpvim/ctrlp.vim', {'on': '<Plug>CtrlP'}

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
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'

Plug 'APZelos/blamer.nvim'

Plug 'kyazdani42/nvim-web-devicons'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 

" checkhealth nvim-treesitter

call plug#end()

syntax on

" Themes
colorscheme dracula
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

" let mapleader="\<space>"
let mapleader="l"

nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pi :PlugInstall<cr>
nnoremap <C-p> :Files<cr>
" nnoremap <C-f> :Ack<space>
nnoremap <C-r> :redo<cr><esc>
nnoremap <C-j> :CtrlSF -filetype react 
nnoremap <C-f> :CtrlSF                  
nnoremap <C-o> :CtrlSFOpen<cr>
nnoremap <C-t> :CtrlSFToggle<CR>
inoremap <C-t> <Esc>:CtrlSFToggle<CR>

nnoremap <C-]> :NERDTreeToggle<cr><esc>
nnoremap <C-e> :e<cr>
nnoremap <C-o> :noh<esc>
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
nnoremap <Leader>rs :TestFile<CR>
nnoremap <Leader>rn :TestNearest<CR>
nnoremap <Leader>rl :TestLast<CR>
nnoremap <Leader>ra :TestSuite<CR>
nnoremap <Leader>rv :TestVisit<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nnoremap <C-d> <Plug>(coc-defintion)

nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>

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

nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'

let test#strategy = "neoterm"

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

lua <<EOF
  require('nvim-treesitter.configs').setup {
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = "maintained",

    -- Install languages synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing
    ignore_install = { "javascript" },

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

lua <<EOF
 require('telescope').setup{
    defaults = {
      preview = false,
    }
  }

require('telescope').load_extension('fzf')
EOF


