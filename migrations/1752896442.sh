echo "Replace volume control GUI with a TUI"

if zarchlinux-cmd-missing wiremix; then
  zarch-pkg-add wiremix
  zarchlinux-pkg-drop pavucontrol
  zarchlinux-refresh-applications
  zarchlinux-refresh-waybar
fi
