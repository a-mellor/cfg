"  if $SHELL =~ 'bin/fish'
" 
"    set shell=/bin/sh
"  endif


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

set tabstop=2     "tab width
set shiftwidth=2  "indent size
set expandtab     "use space to instead the tab character
set smarttab

syntax enable

" Leader
let mapleader = " "
let maplocalleader = " "

" Line numbers
set relativenumber
set number
set ruler  

" Colours
syntax enable
set termguicolors     " enable true colors support
" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu
set background=dark
" set t_Co=256
" let g:airline_theme='base16-default-dark'
" set termguicolors
highlight Normal ctermbg=none
highlight NonText ctermbg=none
" highlight Normal guibg=none
" highlight NonText guibg=none


" Scroll at bottom of file
set so=7

" Remap
noremap ; :
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>b :NERDTreeFind<CR>
nmap <leader>s :w<CR>
nmap <leader><leader> <C-^>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Set shortcut to get out of normal mode
imap jj <esc>

" CtrlP settinngs
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 0
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|\.hg|\.svn|_site|target|node_modules|bower_components|_build|dist|output|elm-stuff|coverage|deps|tmp)$',
  \ }

" copy to clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Allow switching buffers without saving
set hidden

map <leader>h :set hlsearch!<cr>

" Get out of terminal mode with <Esc>
tnoremap <Esc> <C-\><C-n>

" Markdown preview on write
let vim_markdown_preview_github=1 " use github flavoured markdown
let vim_markdown_preview_toggle=2 " render preivew on write to buffer
let vim_markdown_preview_browser='Google Chrome'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Format elixir files
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

" Go tabs
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" Go highlighting
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

" View hidden files in Nerdtree
let NERDTreeShowHidden=1
