set history=700
set t_Co=256
set autoindent
set smartindent
set smarttab
set expandtab

set tabstop=2
set backspace=2
set shiftwidth=2
set ignorecase
set cmdheight=2

filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

syntax on
set background=dark
set encoding=utf8
set nobackup
set nowb
set noswapfile

map <space> /
map <c-space> ?
