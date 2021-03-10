# load our own completion functions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)

# completion; use cache if updated within 24h
autoload -Uz compinit
compinit -C;

# disable zsh bundled function mtools command mcd
# which causes a conflict.
compdef -d mcd
