set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'alderz/smali-vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'repeat.vim'
Bundle 'tpope/vim-surround'
Bundle 'file-line'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ZoomWin'
Bundle 'tlib'
Bundle 'tComment'
Bundle 'L9'
Bundle 'int3/vim-extradite'
Bundle 'thinca/vim-quickrun'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdtree'
Bundle 'taglist.vim'
"Bundle 'UltiSnips'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Rename'
Bundle 'Raimondi/delimitMate'
Bundle 'thinca/vim-logcat'
Bundle 'Rip-Rip/clang_complete'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-abolish'
"Bundle 'LustyExplorer'

filetype plugin indent on     " required ! 
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed.

" Steve Losh (http://stevelosh.com/blog/2010/09/coming-home-to-vim/)
" Modified for me
" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Sanity

set encoding=utf-8
set scrolloff=3
set showcmd
set showmode
set ruler
set ttyfast
set cursorline
set relativenumber
set smartindent

" Change Leader to ,
let mapleader = ","

" Search
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Wrap at 80

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Textmate invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" Save on loss of focus
au FocusLost * :wa

" My own customizations from here on out that aren't from anywhere in particular. 
" Nelson

set background=dark
" Anti conflict with command t
let g:EasyMotion_leader_key = '<Leader>m' 

" From http://amix.dk/vim/vimrc.html

""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc
noremap <leader>j :CommandT<cr>
noremap <leader>y :CommandTFlush<cr>

" Always show a status line

set laststatus=2

" Have NERDCommenter use spaces when commenting like textmate
let NERDSpaceDelims=1

" Use wildmenu
set wildmenu

" Don't show @ signs when wrapping super line lines
set display=lastline

if has("gui_running")
  " Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

let macvim_hig_shift_movement = 1

