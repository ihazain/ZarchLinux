echo "Allow updating of timezone by right-clicking on the clock (or running zarchlinux-cmd-tzupdate)"

if zarchlinux-cmd-missing tzupdate; then
  bash "$ZARCHLINUX_PATH/install/config/timezones.sh"
  zarchlinux-refresh-waybar
fi
