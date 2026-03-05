echo "Replace bluetooth GUI with TUI"

zarch-pkg-add bluetui
zarchlinux-pkg-drop blueberry

if ! grep -q "zarchlinux-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/zarchlinux-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
