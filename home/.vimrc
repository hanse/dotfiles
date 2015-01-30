set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'

call vundle#end()
filetype plugin indent on

set history=700
set laststatus=2
set showcmd
filetype plugin on
filetype indent on
set autoread
set wildmenu
set ignorecase
set smartcase
set hlsearch
set lazyredraw

syntax enable
set nonumber
set encoding=utf8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set background=dark

colorscheme base16-default

" Airline plugin configuration
let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
