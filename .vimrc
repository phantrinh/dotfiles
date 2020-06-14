set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" alternatively, pass a path where Vundle should install plugins
call plug#begin('~/.vim/plugged')
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" elixir syntax highlight
Plug 'elixir-editors/vim-elixir'
" scala syntax highlight
Plug 'derekwyatt/vim-scala'
" nerdtree
Plug 'scrooloose/nerdtree'
" code complete
Plug 'Valloric/YouCompleteMe'
" one dark theme
Plug 'joshdick/onedark.vim'

call plug#end()

filetype plugin indent on    " required

set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
map <F7> :w<return> :!python %<return>
map <F9> :w<return> :!g++ -o main -std=c++17 %<return> :! ./main<return>
map <F5> :w<return> :!g++ -o main %<return>
map <F2> :w<return> :!xclip -selection clipboard < %<return>
map <C-n> :NERDTreeToggle<CR>
