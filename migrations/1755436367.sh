echo "Add minimal starship prompt to terminal"

if zarchlinux-cmd-missing starship; then
  zarch-pkg-add starship
  cp $ZARCHLINUX_PATH/config/starship.toml ~/.config/starship.toml
fi
