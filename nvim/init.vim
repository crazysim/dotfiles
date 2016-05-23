" Nelson's neovim configuration

set relativenumber
set number

"dein Scripts-----------------------------
" Required:
set runtimepath^=$HOME/.dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('$HOME/.dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

call dein#add('kassio/neoterm')

call dein#add('rust-lang/rust.vim')

" Required:
call dein#end()

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
