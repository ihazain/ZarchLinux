echo "Install swayOSD to show volume status"

if zarchlinux-cmd-missing swayosd-server; then
  zarch-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
