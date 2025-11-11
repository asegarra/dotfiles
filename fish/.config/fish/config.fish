if status is-interactive

  set -g fish_greeting ""
  
  alias bat="batcat"
  alias lg="lazygit"
  
  zoxide init fish | source
end
