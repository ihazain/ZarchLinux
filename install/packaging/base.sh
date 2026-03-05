# Install all base packages
mapfile -t packages < <(grep -v '^#' "$ZARCHLINUX_INSTALL/zarchlinux-base.packages" | grep -v '^$')
zarch-pkg-add "${packages[@]}"
