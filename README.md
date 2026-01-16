<h1 align="center">
    :sparkles: Miriland :sparkles:
</h1>

<div align="center">
  <p>Simple setup for VoidLinux</p>
  <a href="#features">Features</a> • 
  <a href="#gallery">Gallery</a> • 
  <a href="#dependencies">Dependencies</a> • 
  <a href="#installation">Installation</a> • 
  <a href="#keybinds">Keybinds</a> • 
  <a href="#credits">Credits</a>
</div>

---

# Features
* GNOME-like panel
* Minimal application drawer
* Beautiful set of wallpapers (1920x1080)
* Blurred overview

# Gallery

>[!NOTE]
>To be done soon

# Dependencies
| Dependency | What's for |
| :--- | :--- |
| **niri** | Window Manager |
| **mako** | Notification daemon |
| **waybar** | Status panel |
| **pipewire wireplumber** | Sound server and session management |
| **brightnessctl** | Screen backlight control |
| **dbus** | Inter-process communication |
| **ImageMagick** | Image processing and thumbnail generation |
| **ffmpeg** | Creating blurred backgrounds for overview |
| **fyi** | Lightweight notification tool for OSD  |
| **rofi** | Application launcher and menu interface |
| **swww** | Animated wallpaper daemon (workspace/overview support) |
| **inotify-tools** | Monitoring filesystem changes in `bgprocessor` |
| **font-awesome** | Icons for `waybar` and `powermenu`  |
| **adwaita-fonts** | Standard interface fonts |

# Installation 
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/atarwn/miri/main/install.sh)"
```

# Keybinds
Here's only keybinds that are different from default Niri

|Shortcut|Action|
|---|---|
|Mod+Return|Spawn alacritty|
|Mod+P|Open application drawer|
|Mod+B|Select background|
|Mod+L|Open power menu|
|Mod+Period|Workspace down|
|Mod+Comma|Workspace up|
|Ctrl+Alt+Del|Exit niri|

---

# Credits

* [@kianblakley](https://github.com/kianblakley) and his [niri-land](https://github.com/kianblakley/niri-land) for sources
* Unknown authors from unsplash for their wallpapers i randomly got from [lipsum.app](https://lipsum.app)
