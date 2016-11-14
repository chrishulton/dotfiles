set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" plugins and associated config
Plugin 'scrooloose/nerdtree'
nnoremap <C-g> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>

Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

" frameworks
Plugin 'tpope/vim-rails'

Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/quickfixsigns_vim'
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']
Plugin 'wfleming/vim-codeclimate'

call vundle#end()            " required
filetype plugin indent on    " required

" vim config
set number
syntax on
set autoindent smartindent
set smarttab                    " Make <tab> and <backspace> smarter
set expandtab
set tabstop=2
set shiftwidth=2
set textwidth=80
set nowrap

let mapleader=","
let localmapleader=","

nmap <Leader>s :%S/
vmap <Leader>s :S/

map <Leader>p :set invpaste<cr>

vmap s :!sort<CR>
vmap u :!sort -u<CR>

set laststatus=2

" Resize window splits
nnoremap <Up>    3<C-w>-
nnoremap <Down>  3<C-w>+
nnoremap <Left>  3<C-w><
nnoremap <Right> 3<C-w>>
