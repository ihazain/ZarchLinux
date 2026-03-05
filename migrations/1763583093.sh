echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/zarchlinux/themes/ethereal ]]; then
  rm -rf ~/.config/zarchlinux/themes/ethereal
  ln -nfs ~/.local/share/zarchlinux/themes/ethereal ~/.config/zarchlinux/themes/
fi
