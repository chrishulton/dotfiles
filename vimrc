" vim config
set clipboard=unnamed
set nocompatible
set smartindent
set autoindent
set directory=/tmp " sets the swap (.swp) file directory
set laststatus=2
set nowrap
set number
set smarttab " Make <tab> and <backspace> smarter
set backspace=indent,eol,start
if $TERM =~ '256color'
  set t_Co=256
end

syntax on

colorscheme default

" hi TabLineSel ctermfg=Black
" hi StatusLine ctermfg=Black
" hi Comment ctermfg=DarkGray
" hi Constant ctermfg=Blue
" hi Normal ctermfg=Black
" hi NonText ctermfg=Red
" hi Special ctermfg=DarkMagenta
" hi Cursor ctermfg=Green

" for doc editing
set textwidth=100
set colorcolumn=+1
highlight ColorColumn ctermbg=lightgray

let localmapleader=","
let mapleader=","
nnoremap <Leader>p :set invpaste<cr>
nnoremap <Leader>s :%S/
vnoremap <Leader>s :S/
vnoremap s :!sort<CR>
vnoremap u :!sort -u<CR>

" resize window splits
nnoremap <Up>    3<C-w>-
nnoremap <Down>  3<C-w>+
nnoremap <Left>  3<C-w><
nnoremap <Right> 3<C-w>>

filetype off

" plugins and associated config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin manager
Plugin 'VundleVim/Vundle.vim'

" ruby
Bundle 'vim-ruby/vim-ruby'

" fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = '/\.\|\.o\|\.so'
let g:ctrlp_map = '<Leader>.'
let g:ctrlp_regexp = 1
let g:ctrlp_switch_buffer = 0
" let g:ctrlp_use_caching = 0
" let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --others --exclude-standard --cached']
" map <Leader>, :CtrlPMixed<CR>
map <Leader>, :CtrlP<CR>

" toggle comments
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

" file exploration tree
Plugin 'scrooloose/nerdtree'
nnoremap <C-g> :NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeFind<cr>
let NERDTreeShowHidden=1

" display vcs changes
Plugin 'tomtom/quickfixsigns_vim'
let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

" git commands
Plugin 'tpope/vim-fugitive'

" rails navigation
Plugin 'tpope/vim-rails'

" status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='papercolor'

" async helpers
Plugin 'tpope/vim-dispatch'

" codeclimate analysis
Plugin 'wfleming/vim-codeclimate'

" alignment
Plugin 'junegunn/vim-easy-align'
" nmap ga <Plug>(EasyAlign)
" xmap ga <Plug>(EasyAlign)
xnoremap ga :EasyAlign * \|<CR>

" ember
Plugin 'mustache/vim-mustache-handlebars'

" react
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" slim
Plugin 'slim-template/vim-slim.git'

" typescript
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set expandtab

" ruby
let ruby_space_errors = 1

" go
autocmd FileType go setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab
autocmd FileType python setlocal shiftwidth=2 tabstop=2 expandtab

" js
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
