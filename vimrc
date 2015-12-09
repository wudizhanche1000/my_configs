set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
Plugin 'Lokaltog/vim-powerline'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

Plugin 'fatih/molokai'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'altercation/vim-colors-solarized'
Plugin 'https://github.com/majutsushi/tagbar.git'
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




syntax enable
set background=dark
colorscheme molokai
"let g:molokai_original = 1
let g:rehash256 = 1
"set background=dark
" AutoFmatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Bind nohl
" " " Removes highlight of your last search
" " " ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for
" ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" Showing line numbers and length
set number  " show line numbers
set colorcolumn=80
highlight ColorColumn ctermbg=233

" Mouse
set mouse=a  " on OSX press ALT and click

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Settings for powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

" Better copy & paste
" " " When you want to paste large blocks of code into vim, press F2 before
" you
" " " paste. At the bottom you should see ``-- INSERT (paste) --``.
" "
set pastetoggle=<F2>
set clipboard=unnamed

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Toggle NerdTree
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

"Configs for gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
nmap <F8> :TagbarToggle<CR>
" key map for vim-go
nmap <C-b> :GoDef<CR>

