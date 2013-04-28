set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles and real vimrc starting here:

" "LIBRARIESISH:
" Allows more repeating with plugins
Bundle 'repeat.vim'

" Not sure what this provides but it's here anyway
Bundle 'tlib'

" Not sure either.
Bundle 'L9'

" VCS SUPPORT:
Bundle 'tpope/vim-fugitive'

" VISUAL STUFF:
" I like this theme
Bundle 'altercation/vim-colors-solarized'

" Some indents
Bundle 'nathanaelkane/vim-indent-guides'

" Allows me to operate on surround characters
Bundle 'tpope/vim-surround'

" You can open a file to a line!
Bundle 'file-line'

" Easy motion for going to some place without guessing how many keys to press
Bundle 'Lokaltog/vim-easymotion'

" DWM clone
Bundle 'spolu/dwm.vim'

" <C-W> o toggle to zoom windows
" Bundle 'ZoomWin'

" Lusty stuff for mojing around with <leader> l {jfrbg}
" No longer used due to ctrl-p being an all in one
" Bundle 'LustyExplorer'
Bundle 'LustyJuggler'

" Ctrl P
" juggles with ctrl p
Bundle 'kien/ctrlp.vim'

" Smart Buffer Delete
Bundle 'orftz/sbd.vim'

" The nicer powerbar line thing
Bundle 'Lokaltog/vim-powerline'

" EDITING STUFF:
" It comments a bit more crazy than NERDCommenter
Bundle 'tComment'

" Use :Extradite to get a nice log
Bundle 'int3/vim-extradite'

" I don't use this. It's to quicky run something.
" Bundle 'thinca/vim-quickrun'

" It's Command T, or leader j. Find a file quickly
" Bundle 'wincent/Command-T'

" I don't use this either. I use a real file browser
" Bundle 'scrooloose/nerdtree'

" Deprecated in favor of the new TagBar
" Bundle 'taglist.vim'

" Got snippets. Tab to complete
Bundle 'SirVer/ultisnips'

" It comments by cmd /
Bundle 'scrooloose/nerdcommenter'

" Allows me to clean up crummy mispellings
Bundle 'tpope/vim-abolish'

" I can rename a file with :Rename in place!
Bundle 'Rename'

" Fix whitespace
Bundle 'bronson/vim-trailing-whitespace'

" Does autoclosing of brackets and parenthesis
" Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'

" TagBar is the new TagList
Bundle 'majutsushi/tagbar'

" Ruby endings
Bundle 'tpope/vim-endwise'

" Tabularize because i use spaces
Bundle 'godlygeek/tabular'

" FRAMEWORKS:
" Clang for C and C++
Bundle 'Rip-Rip/clang_complete'

" Ruby on Rails
Bundle 'tpope/vim-rails'

" SYNTAX:
" Handy for Android takeapart
Bundle 'alderz/smali-vim'

" Android Logcat syntax
Bundle 'thinca/vim-logcat'

" Carto for Tilemill stuff
Bundle 'crazysim/vim-carto'

" This one for Scala Stuff
Bundle 'bmatheny/vim-scala'

" This one for Coffeescript
Bundle 'kchmck/vim-coffee-script'

" Markdown
Bundle 'tpope/vim-markdown'

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
" Tabs
"
set tabstop=4
set shiftwidth=2
set softtabstop=2
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

" Load when something outside vim changes the file. More IntelliJ like.
" Source: http://stackoverflow.com/a/2496570/286021
set autoread

" Tags
" Won't need this because of
" http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
" saying I won't need this because of fugitive.vim
" set tags=./tags;$HOME          " walk directory tree upto $HOME looking for tags

" TagBar Settings

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 0
let g:tagbar_expand = 0

" Ctrl-P settings
let g:ctrlp_extentions=['tag']
nnoremap <silent> <c-p> :CtrlPTag

"Open/focus tagbar
nnoremap <silent> <leader>c   :TagbarOpen<CR>
"Close it
"(also possible by pressing "q" while tagbar is focused)
" nnoremap <silent> <leader>c :TagbarClose<CR>

set background=dark
" Anti conflict with command t
let g:EasyMotion_leader_key = '<Leader>m'

" From http://amix.dk/vim/vimrc.html

""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
" let g:CommandTMaxHeight = 15
" set wildignore+=*.o,*.obj,.git,*.pyc
" noremap <leader>j :CommandTFlush<cr>:CommandT<cr>
" noremap <leader>y :CommandTFlush<cr>

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


"Smart buffer delete
nnoremap <silent> <leader>bd :Sbd<CR>


" Fancy Powerline Symbols
let g:Powerline_symbols = 'fancy'

" Force save as sudo
cmap w!! w !sudo tee % > /dev/null     "force save when opened while !root

" Disable Vim Swapfile and just use git for everything
set noswapfile

" File specific settings

" Set ruby files to use different settings for spaces.
autocmd FileType ruby setlocal sw=2 sts=2 et

" Read MML files for Carto Tilemill with JSON aka Javascript
autocmd BufNewFile,BufRead *.mml set ft=javascript

" Read Salt Stack SLS files as YAML
autocmd BufNewFile,BufRead *.sls set ft=yaml sw=2 sts=2 et
"
" YACC for ypp
au BufNewFile,BufReadPost *.ypp set ft=yacc

" Markdown
au BufRead,BufNewFile *.md set filetype=markdown
"
" Makefile no expandtab
autocmd FileType make setlocal noexpandtab
