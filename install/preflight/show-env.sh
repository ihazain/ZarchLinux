# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(ZARCHLINUX_CHROOT_INSTALL|ZARCHLINUX_ONLINE_INSTALL|ZARCHLINUX_USER_NAME|ZARCHLINUX_USER_EMAIL|USER|HOME|ZARCHLINUX_REPO|ZARCHLINUX_REF|ZARCHLINUX_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
