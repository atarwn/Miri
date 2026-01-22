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

![Workspace](https://github.com/atarwn/Miri/blob/main/assets/Screenshot%20from%202026-01-18%2007-12-28.png?raw=true)
![Overview Blur](https://github.com/atarwn/Miri/blob/main/assets/Screenshot%20from%202026-01-18%2007-13-28.png?raw=true)
![Application Drawer](https://github.com/atarwn/Miri/blob/main/assets/Screenshot%20from%202026-01-18%2007-12-45.png?raw=true)
![Background Selector](https://github.com/atarwn/Miri/blob/main/assets/Screenshot%20from%202026-01-18%2007-13-00.png?raw=true)
![Power Menu](https://github.com/atarwn/Miri/blob/main/assets/Screenshot%20from%202026-01-18%2007-13-12.png?raw=true)

# Dependencies
| Dependency | What's for |
| :--- | :--- |
| **niri** | Window Manager |
| **mesa** | Some kind of graphics library, required for niri to make output (tested on AMD iGPU and Intel iGPU |
| **elogind** | Required for Niri and many other things |
| **dbus** | Required for elogind and many other things |
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
| **font-awesome6** | Icons for `waybar` and `powermenu`  |
| **nerd-fonts-symbols-ttf** | Some glyphs that are useful but not in font-awesome |
| **adwaita-fonts** | Standard interface fonts |
| **git** | Installation |
| **xwayland-satellite** | X11 and dbus support |
| **glibc-locales** | Rofi refuses to start and this shit is just needed for many other programs |

>[!TIP]
>Locales are stored in /etc/default/libc-locales

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

* [@kianblakley](https://github.com/kianblakley) and his [niri-land](https://github.com/kianblakley/niri-land) for rofi and mako configurations
* Unknown authors from unsplash for their wallpapers i randomly got from [lipsum.app](https://lipsum.app)

> p.s. if you think that the keybinds are strange you'll be absolutely right
