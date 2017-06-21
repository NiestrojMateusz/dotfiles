set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugins

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
Plugin 'vim-ruby/vim-ruby'
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
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

map <C-t> :NERDTreeToggle<CR>
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

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"Built in completion setting

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" . scan the current buffer, b scan other loaded buffers that are in the buffer list, u scan the unloaded buffers that
" are in the buffer list, w scan buffers from other windows, t tag completion
set complete=.,b,u,w,t,]

" Keyword list
set complete+=k~/.vim/keywords.txt

