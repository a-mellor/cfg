" Plug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ayu-theme/ayu-vim'
Plug 'chriskempson/base16-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'elmcast/elm-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
Plug 'OmniSharp/omnisharp-vim', { 'for': 'C#' }
Plug 'rhysd/clever-f.vim'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'sbdchd/neoformat'
Plug 'wikitopian/hardmode'

call plug#end()

" ========================================
" Settings
" ========================================
" tabs
set tabstop=2     "tab width
set shiftwidth=2  "indent size
set expandtab     "use space to instead the tab character
set smarttab

" Line numbers
set relativenumber
set number
set ruler  

" Scroll at bottom of file
set so=7

" 80 chars/line
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

" Keep the cursor on the same column
set nostartofline

" Allow switching buffers without saving
set hidden

" ========================================
" Colours
" ========================================
syntax enable
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
set background=dark

" set t_Co=256
highlight Normal ctermbg=none
highlight NonText ctermbg=none
" highlight Normal guibg=none
" highlight NonText guibg=none

" ========================================
" Mappings
" ========================================
" ; as :
noremap ; :

" Movement in normal mode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set Leader
let mapleader = " "
let maplocalleader = " "

" Writing
nmap <leader>s :w<CR>
nmap <leader><leader> <C-^>

" Tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Escaping
imap jj <esc>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Toggle search highlighting
map <leader>h :set hlsearch!<cr>

" Exit terminal mode with <Esc>
tnoremap <Esc> <C-\><C-n>

" copy to clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" ========================================
" NERD Tree
" ========================================
" Open and close
nmap <leader>n :NERDTreeToggle<CR>
" Show current file
nmap <leader>b :NERDTreeFind<CR>
" View hidden files
let NERDTreeShowHidden=1

" ========================================
" CtrlP 
" ========================================
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|\.hg|\.svn|_site|target|node_modules|bower_components|_build|dist|output|elm-stuff|coverage|deps|tmp)$',
  \ }

" ========================================
" Elixir
" ========================================

" Format files
let g:neoformat_elixir_exfmt = {
  \ 'exe': 'mix',
  \ 'args': ['format'],
  \ 'replace': 1,
  \ }

let g:neoformat_enabled_elixir = ['exfmt']

augroup filetype_elixir
  autocmd!
  autocmd BufWritePre *.ex Neoformat
  autocmd BufWritePre *.exs Neoformat
augroup END

" ========================================
" Go
" ========================================
" Tabs
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

"  Highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

" Auto import dependencies 
let g:go_fmt_command = "goimports"
