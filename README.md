### Screenshots

<details>
  <summary>Screenshots</summary>
  
![desktop](https://github.com/izmyname/archlinux-backup/blob/main/screenshots/1.png?raw=true "desktop")
![windows](https://github.com/izmyname/archlinux-backup/blob/main/screenshots/2.png?raw=true "windows")
![fullscreen-dmenu-logout](https://github.com/izmyname/archlinux-backup/blob/main/screenshots/3.png?raw=true "fullscreen-dmenu-logout")

</details>

### Important

>[!IMPORTANT]
>The setup relies on [UKI](https://wiki.archlinux.org/title/Unified_kernel_image) and built-in EFI bootloader to boot the OS. mkinitcpio uses [cmdline](https://github.com/izmyname/archlinux-backup/tree/main/etc/cmdline.d) and [kernel preset](https://github.com/izmyname/archlinux-backup/blob/main/etc/mkinitcpio.d/linux-zen.preset) to build the kernel image. The cmdline  [root](https://github.com/izmyname/archlinux-backup/blob/main/etc/cmdline.d/10-crypt-root.conf) must be edited on every new installation.


>[!TIP]
>The [instruction](https://github.com/Foxboron/sbctl?tab=readme-ov-file#key-creation-and-enrollment) on how to sign UKI for secureboot, using [sbctl](https://github.com/Foxboron/sbctl)


>[!IMPORTANT]
>The setup relies on systemd with [uwsm](https://github.com/Vladimir-csp/uwsm) to manage graphical session startup. The [shell profile](https://github.com/izmyname/archlinux-backup/blob/main/home/.zprofile) is used instead of a display manager.

>[!NOTE]
>Most apps are started either as systemd services, or by using xdg-autostart desktop files (uwsm allows this). Check [systemd-user-enable.sh](https://github.com/izmyname/archlinux-backup/blob/main/systemd-user-enable.sh) and [systemd-enable.sh](https://github.com/izmyname/archlinux-backup/blob/main/systemd-enable.sh) scripts.

### Desktop and other apps

+ <b>OS:</b> _Arch Linux_
+ <b>Desktop:</b> _Hyprland_
+ <b>Status bar:</b> _Waybar_
+ <b>Terminal:</b> _Foot_
+ <b>Launcher:</b> _Fuzzel_
+ <b>Notifications:</b> _mako ([xkb notification](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/lang), [backlight notification](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/backlight), [wireplumber notification](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/wpctl-volume))_
+ <b>File manager:</b> _nnn ([wrapper script](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/fzmp) for calling from a keybind)_ 
+ <b>lockscreen and idle daemon:</b> _Hyprlock + Hypridle_
+ <b>Wallpaper:</b> _Hyprpaper ([swww-like script](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/setbg))_
+ <b>Nightlight:</b> _Hyprsunset ([toggle script](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/nightlight))_
+ <b>Power menu:</b> _[dmenu script](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/powermenu)_
+ <b>Image viewer:</b> _swayimg_
+ <b>Music player:</b> _mpd+mpc+slightly modified [fzmp](https://github.com/izmyname/archlinux-backup/blob/main/home/.local/bin/fzmp)_
+ <b>Fonts:</b> _Fira Code, Fira Code-nerd, Awesome, Noto fonts, Noto fonts-emoji_ 
+ <b>Some flatpaks inside hyprland and waybar configs:</b> _com.github.wwmm.easyeffects org.mozilla.firefox org.pipewire.Helvum org.telegram.desktop pw.mmk.OpenFreebuds_
+ <b>The rest:</b> _Check the lists of packages [repos](https://github.com/izmyname/archlinux-backup/blob/main/pkglist.txt) and [aur](https://github.com/izmyname/archlinux-backup/blob/main/pkglist-aur.txt), Hyprland default apps listed [inside the config](https://github.com/izmyname/archlinux-backup/blob/main/home/.config/hypr/hyprland.conf.d/50-var.conf)_


### Theming

+ <b>Theme:</b> _catppuccin-mocha_
+ <b>Icon theme:</b> _Papirus Dark_
+ <b>Firefox theme:</b> _[catppuccin mocha lavender](https://github.com/catppuccin/firefox)_
+ <b>Dark reader and vimium themes:</b>  _[here](https://github.com/izmyname/archlinux-backup/tree/main/home/.local/share/firefox)_
+ <b>Qbittorrent theme:</b>  _[here](https://github.com/izmyname/archlinux-backup/tree/main/home/.local/share/qbittorrent)._

### Other

+ <b>Enable icons for nnn file manager:</b> _inside PKGBUILD add O_NERD=1 under build section._

```
build() {
  cd nnn
  make O_NERD=1
}
```
