echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/zarchlinux/themes/ristretto ]]; then
  ln -nfs ~/.local/share/zarchlinux/themes/ristretto ~/.config/zarchlinux/themes/
fi
