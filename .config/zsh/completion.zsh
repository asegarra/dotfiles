setopt complete_in_word  # Complete from both ends of a word.
setopt always_to_end     # Move cursor to the end of a completed word.

autoload -Uz compinit && compinit

_comp_options+=(globdots) # match files beginning with dots (hidden)

zstyle ':completion:*:*:*:*:*' menu select

# case insensitive (all), partial-word and substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Colors
zstyle ':completion:*:default' list-colors '${\(s.:.)LS_COLORS}'

# Use UNIX behaviour and treat // as single /
zstyle ':completion:*' squeeze-slashes true

# automatically load bash completion functions
autoload -U +X bashcompinit && bashcompinit