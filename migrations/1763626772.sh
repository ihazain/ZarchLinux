echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/zarchlinux/themes/hackerman ]]; then
  rm -rf ~/.config/zarchlinux/themes/hackerman
  ln -nfs ~/.local/share/zarchlinux/themes/hackerman ~/.config/zarchlinux/themes/
fi
