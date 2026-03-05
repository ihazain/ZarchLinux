if [[ -n ${ZARCHLINUX_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  zarch-pkg-add base-devel
  # Refresh repos
  sudo pacman -Syyuu --noconfirm
fi
