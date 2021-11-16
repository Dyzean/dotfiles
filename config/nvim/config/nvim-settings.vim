"|=========================|
"|  N V I M   C O N F I G  |
"|=========================|

" Basics
syntax enable
set cursorline
set number
set hlsearch
colorscheme nord

" Indentation
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent 

" Other
set mouse=a
set noerrorbells
set nowrap
set noswapfile
set ignorecase
set incsearch
set encoding=utf-8
set splitbelow splitright
set termguicolors

" Hide command
set noshowcmd

if has('nvim')
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" Enable autocompletion
set wildmode=longest,list

