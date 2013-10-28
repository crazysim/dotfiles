set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Global Settings

set tabstop=4     " Indentation every four columns
set shiftwidth=2  " Use indents of two spaces
set softtabstop=2  " Backspace can delete soft indent
set expandtab     " Tab makes soft indents

" My Bundles and real vimrc starting here:

" "LIBRARIESISH:
" Allows more repeating with plugins
Bundle 'repeat.vim'

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

" DWM clone
Bundle 'spolu/dwm.vim'

" Ctrl P
" juggles with ctrl p
Bundle 'kien/ctrlp.vim'
let g:ctrlp_extentions=['tag']
nnoremap <silent> <c-p> :CtrlPTag

" Smart Buffer Delete
Bundle 'orftz/sbd.vim'
nnoremap <silent> <leader>bd :Sbd<CR>

" EDITING STUFF:
" It comments a bit more crazy than NERDCommenter
Bundle 'tComment'

" Use :Extradite to get a nice log
Bundle 'int3/vim-extradite'

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
Bundle 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

" Bundle 'kana/vim-smartinput'

" TagBar is the new TagList
Bundle 'majutsushi/tagbar'

" Tags are generated via git hooks
" http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 0
let g:tagbar_expand = 0

"Open/focus tagbar
nnoremap <silent> <leader>c   :TagbarOpen<CR>

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

" Vim-Ruby
Bundle 'vim-ruby/vim-ruby'

" Golang
Bundle 'jnwhiteh/vim-golang'
autocmd FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab

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

" Disable Vim Swapfile and just use git for everything
set noswapfile

" Sanity

set encoding=utf-8
set scrolloff=5
set showcmd
set showmode " Display the current mode
set ruler
set ttyfast
set cursorline
set number
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

" Always show a status line
set laststatus=2

" IntelliJ IDEA style autosaving and reloading.
" Load when something outside vim changes the file.
" Source: http://stackoverflow.com/a/2496570/286021
set autoread
" Save on loss of focus
au FocusLost * :wa

set background=dark

" From http://amix.dk/vim/vimrc.html

" Have NERDCommenter use spaces when commenting like textmate
let NERDSpaceDelims=1

" Use wildmenu
set wildmenu

" Don't show @ signs when wrapping super line lines
set display=lastline

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" This needs to be in vimrc
let macvim_hig_shift_movement = 1

" Force save as sudo
cmap w!! w !sudo tee % > /dev/null     "force save when opened while !root

" File specific settings

" Read Vagrantfile files as Ruby
autocmd BufNewFile,BufRead Vagrantfile set ft=ruby
autocmd BufNewFile,BufRead Berksfile set ft=ruby

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

" Set ruby files to use different settings for spaces.
autocmd FileType ruby setlocal sw=2 sts=2 et
