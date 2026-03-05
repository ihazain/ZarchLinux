if [[ -n ${ZARCHLINUX_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  zarch-pkg-add base-devel

  # Configure pacman
  sudo cp -f ~/.local/share/zarchlinux/default/pacman/pacman-${ZARCHLINUX_MIRROR:-stable}.conf /etc/pacman.conf
  sudo cp -f ~/.local/share/zarchlinux/default/pacman/mirrorlist-${ZARCHLINUX_MIRROR:-stable} /etc/pacman.d/mirrorlist


  sudo pacman -Sy
  zarch-pkg-add zarchlinux-keyring

  # Refresh all repos
  sudo pacman -Syyuu --noconfirm
fi
