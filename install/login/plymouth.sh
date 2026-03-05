if [[ $(plymouth-set-default-theme) != "zarchlinux" ]]; then
  sudo cp -r "$HOME/.local/share/zarchlinux/default/plymouth" /usr/share/plymouth/themes/zarchlinux/
  sudo plymouth-set-default-theme zarchlinux
fi
