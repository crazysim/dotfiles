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

filetype plugin indent on     " required! 
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

"LustyExplorer sez I should do this
" set hidden

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

" MacVIM specifics from Janus
if has("gui_macvim")
  colorscheme solarized
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  
  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv

  " No Toolbar
  set guioptions-=T
  
  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
endif

" Always show a status line

set laststatus=2

" Have NERDCommenter use spaces when commenting like textmate
let NERDSpaceDelims=1

" Use wildmenu
set wildmenu

" Don't show @ signs when wrapping super line lines
set display=lastline
