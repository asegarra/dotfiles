eval $(keychain --eval --noask --quiet id_ed25519)

# Start graphical X session
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  startx -- -keeptty > /tmp/i3.log 2>&1
fi

# Start graphical wayland session
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty2" ]; then
  export XDG_CURRENT_DESKTOP=sway
  export XDG_SESSION_TYPE=wayland	
  export MOZ_ENABLE_WAYLAND=1

  exec sway > /tmp/sway.log 2>&1 
fi

