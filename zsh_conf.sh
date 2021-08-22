fpath=($PWD/completions $fpath) 
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2

PATH=$PATH:$PWD/bin
