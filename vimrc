" Nelson's vimrc. It's a mess!

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!


" LIBRARIESISHTHINGZ:
" For parallelism in certain plugins like NeoBundle
NeoBundle 'Shougo/vimproc.vim'
" Allows more repeating with plugins
NeoBundle 'repeat.vim'


" VISUAL STUFF:
" I like this theme because it's easy on the eyes.
NeoBundle 'altercation/vim-colors-solarized'

" Indent guides!
NeoBundle 'nathanaelkane/vim-indent-guides'

" Allows me to operate on surround characters
NeoBundle 'tpope/vim-surround'

" You can open a file to a line!
NeoBundle 'file-line'

" Ctrl P
" juggles with ctrl p
NeoBundle 'kien/ctrlp.vim'
let g:ctrlp_extentions=['tag']
let g:ctrlp_user_command = {
      \ 'types': {
      \ 1: ['.git', 'cd %s && git ls-files . -co --exclude-standard'],
      \ 2: ['.hg', 'hg --cwd %s locate -I .'],
      \ },
      \ 'fallback': 'find %s -type f'
      \ }
nnoremap <silent> <c-p> :CtrlPTag

" Vim Airline
NeoBundle 'bling/vim-airline'
let g:airline_powerline_fonts=1
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_branch_prefix = '⭠ '
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'


" EDITING STUFF:
" Got snippets. Tab to complete
NeoBundle 'SirVer/ultisnips'

" It comments by CMD-/ as seen in gvimrc
NeoBundle 'scrooloose/nerdcommenter'
" Have NERDCommenter use spaces when commenting like textmate
let NERDSpaceDelims=1

" I can rename a file with :Rename in place!
NeoBundle 'Rename'

" Don't have trailing whitespace
NeoBundle 'bronson/vim-trailing-whitespace'

" Does autoclosing of brackets and parenthesis
NeoBundle 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1

" TagBar is the new TagList
NeoBundle 'majutsushi/tagbar'
" Tags are generated via git hooks
" http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 0
let g:tagbar_expand = 0
"Open/focus tagbar
nnoremap <silent> <leader>c   :TagbarOpen<CR>

" Easy Align
NeoBundle 'junegunn/vim-easy-align'

" Checker
NeoBundle 'scrooloose/syntastic'


" FRAMEWORKS:


" SYNTAX AND LANGUAGE SPECIFIC OPTIONS:

" Android Decompilation
NeoBundle 'alderz/smali-vim'

" Markdown
NeoBundle 'tpope/vim-markdown'
au BufRead,BufNewFile *.md set filetype=markdown

" Ruby
NeoBundle 'vim-ruby/vim-ruby'
" Read Vagrantfile files as Ruby
autocmd BufNewFile,BufRead Vagrantfile set ft=ruby
autocmd BufNewFile,BufRead Berksfile set ft=ruby
" Set ruby files to use different settings for spaces.
autocmd FileType ruby setlocal sw=2 sts=2 et
" Ruby blocks
NeoBundle 'tpope/vim-endwise'

" Golang
NeoBundle 'Blackrush/vim-gocode'
autocmd FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab

" Extra for YACC, Bison, and Jison
NeoBundle 'justinmk/vim-syntax-extra'
" Jison is a Javascript ... Bison
autocmd BufRead,BufNewFile *.jison setlocal ft=yacc

" Makefile no expandtab
autocmd FileType make setlocal noexpandtab

" Read MML files for Carto Tilemill with JSON aka Javascript
autocmd BufNewFile,BufRead *.mml set ft=javascript


" NEOBUNDLE CONTINUED:
""" Continue NeoBundle Setup

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
""" End NeoBundle Scripts-------------------------


" GLOBAL SETTINGS:
set tabstop=4     " Indentation every four columns
set shiftwidth=2  " Use indents of two spaces
set softtabstop=2  " Backspace can delete soft indent
set expandtab     " Tab makes soft indents

" Disable Vim Swapfile and just use git for real version controling
set noswapfile
" Directories for swap files. Uselessly set here but it makes me feel good.
set backupdir=~/.vim/backup
set directory=~/.vim/backup

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

" Wrap at 80 preferably
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Textmate-like invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" Always show a status line
set laststatus=2

" IntelliJ IDEA style autosaving and reloading.
" Load when something outside vim changes the file.
" As mentioned above, do the real version controlling in git.
" http://stackoverflow.com/a/2496570/286021
set autoread
" Save on loss of focus
au FocusLost * :wa

set background=dark
syntax on

" Use wildmenu
set wildmenu

" Don't show @ signs when wrapping super long lines
set display=lastline

" This would be in gvimrc but it actually needs to be in vimrc
let macvim_hig_shift_movement = 1

" Force save as sudo
cmap w!! w !sudo tee % > /dev/null     "force save when opened while !root


