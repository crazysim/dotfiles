alias j=z

rbenv init - | source
pyenv init - | source

set PATH $HOME/bin $PATH
set PATH $HOME/.multirust/toolchains/stable/cargo/bin $PATH
set PATH $HOME/.multirust/toolchains/beta/cargo/bin $PATH
set PATH $HOME/.multirust/toolchains/nightly/cargo/bin $PATH
set PATH /usr/texbin $PATH

fish_vi_mode
