" use your existing ~/.vimrc, files, and plugins located within 
" ~/.vim without having to symlink the files.
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
