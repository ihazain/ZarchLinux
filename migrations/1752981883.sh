echo "Replace wofi with walker as the default launcher"

if zarchlinux-cmd-missing walker; then
  zarch-pkg-add walker-bin libqalculate

  zarchlinux-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/zarchlinux/config/walker/* ~/.config/walker/
fi
