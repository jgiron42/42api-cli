
fpath=(${0:a:h}/completions $fpath) 
autoload -U compinit
compinit
zstyle ':completion:*' menu select=2
export PATH=$PATH:${0:a:h}/bin

export UID42="c1949fbcdbfefe5d2c2cdffbe23b4fdbdba195c697bddccf192561a373de6bdd"
export SECRET42="6795875b1e4e3a913193c905531487fd3f9f7fdbe8ef8c470665f71f7598c09e"
