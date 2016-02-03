set nocompatible

" Enable syntax highlighting
syntax on
filetype plugin indent on

" Colorscheme see https://github.com/hukl/Smyck-Color-Scheme
color smyck

" Add line numbers
"set number
set ruler

set backspace=indent,eol,start  "Allow backspace in insert mode
set autoread                    "Reload files changed outside vim
set showmode                    "Show current mode down the bottom

" Set encoding
set encoding=utf-8

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
