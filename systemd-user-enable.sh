#!/usr/bin/sh

## don't run as root!

# desktop utils
systemctl --user enable hypridle.service hyprpolkitagent.service waybar.service foot-server.service hyprpaper.service poweralertd.service

#local cleanup timers
systemctl --user enable emptytrash.timer paccache-local.timer

## enable mpd
# playlists and state files are configured inside mpd config
# mpd doesn't create them, so we do so in this script before enabling mpd
mkdir --verbose ~/.config/mpd/playlists ~/.local/state/ ~/.local/state/mpd
systemctl --user enable mpd.service mpd-notification.service
