set rtp +=~/.config/nvim

call plug#begin()
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dracula/vim', { 'as': 'dracula' }

" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'tpope/vim-fugitive'

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'

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
Plug 'elixir-lang/vim-elixir'

Plug  'ctrlpvim/ctrlp.vim', {'on': '<Plug>CtrlP'}

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" Plug 'autozimu/LanguageClient-neovim', {
"    \ 'branch': 'next',
"    \ 'do': 'bash install.sh',
"    \ }

call plug#end()

colorscheme dracula
set background=dark


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
nnoremap <C-f> :Ack<space>
nnoremap <C-r> :Ack <space> **/*.rb
nnoremap <C-]> :NERDTreeToggle<cr>
nnoremap <C-e> :e<cr>
nnoremap <C-o> :noh<esc>

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

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/snippets'

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Use deoplete.
let g:deoplete#enable_at_startup = 1

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
let g:NERDTreeIgnore=['\.DS_Store$', '\.git$']
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
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
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
