# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Load all of my zsh files
for zsh_file ($HOME/.config/zsh/*.zsh) source $zsh_file

# Source private config
[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

if zmodload zsh/terminfo && (( terminfo[colors] >= 256 )); then
  [[ ! -f $HOME/.config/zsh/.p10k.zsh ]] || source $HOME/.config/zsh/.p10k.zsh
else
  [[ ! -f $HOME/.config/zsh/.p10k-portable.zsh ]] || source $HOME/.config/zsh/.p10k-portable.zsh
fi