setopt auto_cd           # cd without cd  
setopt auto_pushd        # always pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt numeric_glob_sort  # sort filenames numerically when it makes sense
unsetopt flow_control     # disable flow_control

# History
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data
setopt inc_append_history     # save commands immediately