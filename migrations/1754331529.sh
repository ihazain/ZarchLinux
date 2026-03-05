echo "Update Waybar for new ZarchLinux menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  zarchlinux-refresh-waybar
fi
