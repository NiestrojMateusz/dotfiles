set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
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
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'thaerkh/vim-indentguides'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Bundle 'vim-ruby/vim-ruby'

call vundle#end()

filetype plugin indent on

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
" Colors 
set background=dark
colorscheme OceanicNext

" Keymapping
" set <leader>
let mapleader=","
"For Ruby-vim
imap <S-CR>    <CR><CR>end<Esc>-cc

map <C-n> :NERDTreeToggle<CR>
inoremap jk <esc>
nmap <F8> :TagbarToggle<CR>

let g:user_emmet_mode='a'
let g:ragtag_global_maps = 1

" session menagment
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height=1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

