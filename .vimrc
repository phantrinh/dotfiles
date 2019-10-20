set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" elixir syntax highlight
Plugin 'elixir-editors/vim-elixir'
" scala syntax highlight
Plugin 'derekwyatt/vim-scala'
" nerdtree
Plugin 'scrooloose/nerdtree'
" code complete
Plugin 'Valloric/YouCompleteMe'
" one dark theme
Plugin 'joshdick/onedark.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
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
