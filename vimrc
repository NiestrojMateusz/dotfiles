set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set t_Co=256
syntax on
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set showcmd
set wildmenu
set showmatch
set incsearch
set hlsearch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set backspace=indent,eol,start
set hidden
" Bundles

Plugin 'tpope/vim-sensible'
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'somini/vim-autoclose'
Plugin 'tpope/vim-ragtag'
Plugin 'mattn/emmet-vim'
" Keymapping

map <C-n> :NERDTreeToggle<CR>
inoremap jk <esc>

let g:user_emmet_mode='a'

filetype plugin indent on
