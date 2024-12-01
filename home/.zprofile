emulate sh -c 'source /etc/profile'

#autostart graphical session from tty1.
if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
