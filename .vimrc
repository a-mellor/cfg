"  if $SHELL =~ 'bin/fish'
"    set shell=/bin/sh
"  endif

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
set background=dark
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Normal guibg=none
highlight NonText guibg=none

" Plug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'rhysd/clever-f.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'elmcast/elm-vim'
Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'elixir-editors/vim-elixir'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'sbdchd/neoformat'
Plug 'wikitopian/hardmode'
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }

call plug#end()


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
