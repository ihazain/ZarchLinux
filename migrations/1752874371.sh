echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/zarchlinux/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/zarchlinux/themes/catppuccin-latte ~/.config/zarchlinux/themes/
fi
