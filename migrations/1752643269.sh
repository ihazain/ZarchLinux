echo "Add new matte black theme"

if [[ ! -L $HOME/.config/zarchlinux/themes/matte-black ]]; then
  ln -snf ~/.local/share/zarchlinux/themes/matte-black ~/.config/zarchlinux/themes/
fi
