foreground-vim() {
  fg %vim
}
zle -N foreground-vim
bindkey '^Z' foreground-vim

