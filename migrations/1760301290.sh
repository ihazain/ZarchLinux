echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/zarchlinux/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/zarchlinux/themes/flexoki-light ~/.config/zarchlinux/themes/
fi
