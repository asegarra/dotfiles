# Prevent dups in path
typeset -U PATH path

path+=('$HOME/.local/bin')

export TERMINAL="alacritty"
export BROWSER="firefox"
export EDITOR="nvim"     # $EDITOR opens in terminal
export VISUAL="nvim"     # $VISUAL opens in GUI mode

export _JAVA_AWT_WM_NONREPARENTING=1

# LS & Completion colors
if [ -f $HOME/.dir_colors ]; then
    eval `dircolors --sh $HOME/.dir_colors`
fi

# Color man
export LESS_TERMCAP_mb=$'\E[01;31m'      # Begins blinking.
export LESS_TERMCAP_md=$'\E[01;31m'      # Begins bold.
export LESS_TERMCAP_me=$'\E[0m'          # Ends mode.
export LESS_TERMCAP_se=$'\E[0m'          # Ends standout-mode.
export LESS_TERMCAP_so=$'\E[00;47;30m'   # Begins standout-mode.
export LESS_TERMCAP_ue=$'\E[0m'          # Ends underline.
export LESS_TERMCAP_us=$'\E[01;32m'      # Begins underline.