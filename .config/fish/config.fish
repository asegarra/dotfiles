set -g fish_greeting
set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
    source /opt/asdf-vm/asdf.fish
end
