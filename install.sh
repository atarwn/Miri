#!/usr/bin/env bash

set -e

if [[ $(lsb_release -is) != "VoidLinux" ]]; then
    echo "The setup was created for VoidLinux. It cannot be run on other distributions."
    echo "Please consider manual installation for your distribution."
    exit 1
fi

repo_dir="$HOME/.miriland"
repo_url="https://github.com/atarwn/miri"

if [ ! -d "$repo_dir" ]; then
    git clone "$repo_url" "$repo_dir"
fi

cd "$repo_dir"

if command -v doas >/dev/null 2>&1; then
    priv_esc="doas"
elif command -v sudo >/dev/null 2>&1; then
    priv_esc="sudo"
else
    echo "Error: Neither sudo nor doas found. Please install one of them."
    exit 1
fi

deps="niri mako rofi Waybar pipewire wireplumber dbus ImageMagick fyi \
      font-awesome6 adwaita-fonts inotify-tools ffmpeg swww brightnessctl \
      nerd-fonts-symbols-ttf"

echo "Updating system and installing dependencies via $priv_esc..."
$priv_esc xbps-install -Suy $deps

mkdir -p "$HOME/.config"
mkdir -p "$HOME/.local/bin"

echo "Linking configurations..."
for dot in $(ls conf); do
    target="$HOME/.config/$dot"
    rm -rf "$target"
    ln -sf "$(realpath "conf/$dot")" "$target"
    echo "Linked $dot -> $target"
done

echo "Linking binaries..."
for util in $(ls bin); do
    target="$HOME/.local/bin/$util"
    chmod +x "bin/$util"
    ln -sf "$(realpath "bin/$util")" "$target"
    echo "Linked $util -> $target"
done

echo "Linking backgrounds..."
source_bg="$(realpath Backgrounds)"
target="$HOME/Pictures"
mkdir -p "$target"
ln -sf "$source_bg" "$target/Backgrounds"
echo "Linked $source_bg -> $target/Backgrounds"

echo "Installation complete. Add \$HOME/.local/bin to your PATH."
