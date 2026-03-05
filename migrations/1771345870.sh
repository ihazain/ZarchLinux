echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  zarchlinux-pkg-drop lmstudio
  zarch-pkg-add lmstudio-bin
fi
