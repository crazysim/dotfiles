" This section only works in gvimrc
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
endif
