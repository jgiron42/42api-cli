
fpath=(${0:a:h}/completions $fpath) 
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2
export PATH=$PATH:${0:a:h}/bin

export UID42=""
export SECRET42=""
