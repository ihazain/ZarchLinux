echo "Migrate to proper packages for localsend and asdcontrol"

if zarchlinux-pkg-present localsend-bin; then
  zarchlinux-pkg-drop localsend-bin
  zarch-pkg-add localsend
fi

if zarchlinux-pkg-present asdcontrol-git; then
  zarchlinux-pkg-drop asdcontrol-git
  zarch-pkg-add asdcontrol
fi
