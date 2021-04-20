# If running from tty1 start sway
# if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
# 	exec sway
# fi

# https://github.com/swaywm/sway/wiki#login-managers
if [ -z "${DESKTOP:-}" ] && [ "$(tty)" = "/dev/tty1" ]; then
  if command -v sway >/dev/null 2>&1; then
    # TODO: is there a better place for these exports?
    export XDG_CURRENT_DESKTOP=sway # xdg-desktop-portal
    export XDG_SESSION_DESKTOP=sway # systemd
    export XDG_SESSION_TYPE=wayland # xdg/systemd

    if command -v systemctl >/dev/null 2>&1; then
      # without this, systemd starts xdg-desktop-portal without these environment variables,
      # and the xdg-desktop-portal does not start xdg-desktop-portal-wrl as expected
      # https://github.com/emersion/xdg-desktop-portal-wlr/issues/39#issuecomment-638752975
      systemctl --user import-environment XDG_CURRENT_DESKTOP XDG_SESSION_DESKTOP XDG_SESSION_TYPE
    fi

    exec sway --my-next-gpu-wont-be-nvidia
  fi
fi
