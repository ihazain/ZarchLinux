echo "Install Impala as new wifi selection TUI"

if zarchlinux-cmd-missing impala; then
  zarch-pkg-add impala
  zarchlinux-refresh-waybar
fi
