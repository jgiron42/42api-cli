fpath=($PWD/completions $fpath) 
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2
export PATH=$PATH:$PWD/bin

export UID42=""
export SECRET42=""
