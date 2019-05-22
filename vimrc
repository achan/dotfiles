autocmd! bufwritepost .vimrc source %  " auto reload .vimrc
let mapleader=","

set autoindent
set background=dark
set backspace=indent,eol,start
set expandtab
set hlsearch
set ignorecase
set nobackup
set nocompatible
set noswapfile
set nowrap
set number
set ruler
set shiftwidth=2
set smartindent
set tabstop=2


if exists('+relativenumber')
  set relativenumber
endif

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'achan/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-fugitive'
Plugin 'SirVer/ultisnips'

call vundle#end()

syntax enable

filetype plugin indent on

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|bower_components|dist|tmp)|\.(git|hg|svn)$'
  \ }
let g:UltiSnipsExpandTrigger="<tab>"
