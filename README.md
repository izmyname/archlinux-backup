<details>
  <summary>Screenshots</summary>
  
![desktop](https://github.com/izmyname/archlinux-backup/blob/main/screenshots/1.png?raw=true "desktop")
![windows](https://github.com/izmyname/archlinux-backup/blob/main/screenshots/2.png?raw=true "windows")
![fullscreen-dmenu-logout](https://github.com/izmyname/archlinux-backup/blob/main/screenshots/3.png?raw=true "fullscreen-dmenu-logout")

</details>

<b>Theme:</b> <i>catppuccin-mocha</i>

<b>Firefox theme(mocha variant):</b> https://github.com/catppuccin/firefox

<i>Dark reader and vimium themes are inside `.local/share/firefox` dir.</i>

<i>Qbittorrent theme is in `.local/share/qbittorrent` dir.

<b>Enable icons for nnn file manager:</b> inside PKGBUILD add O_NERD=1 under build section.

```
build() {
  cd nnn
  make O_NERD=1
}
```

<b>Set wallpaper/lockscreen:</b> ln -sf /path/to/wallpaper.png ~/.local/share/wallpaper, then - reload hyprpaper (mod+shift+r, by default)
