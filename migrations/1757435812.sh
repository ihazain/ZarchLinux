echo "Update Zoom webapp to handle zoommtg:// and zoomus:// protocol links"

if [[ -f ~/.local/share/applications/Zoom.desktop ]]; then
  zarchlinux-webapp-remove Zoom
  zarchlinux-webapp-install Zoom https://app.zoom.us/wc/home Zoom.png "zarchlinux-webapp-handler-zoom %u" "x-scheme-handler/zoommtg;x-scheme-handler/zoomus"
fi
