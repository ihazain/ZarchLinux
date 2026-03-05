echo "Add new ZarchLinux Menu icon to Waybar"

mkdir -p ~/.local/share/fonts
cp ~/.local/share/zarchlinux/config/zarchlinux.ttf ~/.local/share/fonts/
fc-cache
