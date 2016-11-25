" vim config
set autoindent smartindent
set directory=/tmp " sets the swap (.swp) file directory
set expandtab
set laststatus=2
set nocompatible
set nowrap
set number
set shiftwidth=2
set smarttab " Make <tab> and <backspace> smarter
set tabstop=2
set textwidth=80
if $TERM =~ '256color'
  set t_Co=256
end

colorscheme delek
filetype off
syntax on

let localmapleader=","
let mapleader=","
map <Leader>p :set invpaste<cr>
nmap <Leader>s :%S/
vmap <Leader>s :S/
vmap s :!sort<CR>
vmap u :!sort -u<CR>

" resize window splits
nnoremap <Up>    3<C-w>-
nnoremap <Down>  3<C-w>+
nnoremap <Left>  3<C-w><
nnoremap <Right> 3<C-w>>

" plugins and associated config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin manager
Plugin 'VundleVim/Vundle.vim'

" fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = '/\.\|\.o\|\.so'
let g:ctrlp_map = '<Leader>.'
let g:ctrlp_regexp = 1
let g:ctrlp_switch_buffer = 0
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']
map <Leader>, :CtrlPMixed<CR>

" toggle comments
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

" file exploration tree
Plugin 'scrooloose/nerdtree'
nnoremap <C-g> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>

" display vcs changes
Plugin 'tomtom/quickfixsigns_vim'
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

" git commands
Plugin 'tpope/vim-fugitive'

" rails navigation
Plugin 'tpope/vim-rails'

" status bar
Plugin 'vim-airline/vim-airline'

" codeclimate analysis
Plugin 'wfleming/vim-codeclimate'

call vundle#end()
filetype plugin indent on
