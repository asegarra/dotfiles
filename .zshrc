source $HOME/.config/zsh/env.zsh
source $HOME/.config/zsh/alias.zsh
source $HOME/.config/zsh/keys.zsh
source $HOME/.config/zsh/completion.zsh
source $HOME/.config/zsh/fzf.zsh

# Enable help
unalias run-help 2> /dev/null 
autoload -Uz run-help

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

eval "$(starship init zsh)"

. $HOME/.asdf/asdf.sh
