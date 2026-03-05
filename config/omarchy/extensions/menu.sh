# Overwrite parts of the zarchlinux-menu with user-specific submenus.
# See $ZARCHLINUX_PATH/bin/zarchlinux-menu for functions that can be overwritten.
#
# WARNING: Overwritten functions will obviously not be updated when ZarchLinux changes.
#
# Example of minimal system menu:
#
# show_system_menu() {
#   case $(menu "System" "  Lock\n󰐥  Shutdown") in
#   *Lock*) zarchlinux-lock-screen ;;
#   *Shutdown*) zarchlinux-system-shutdown ;;
#   *) back_to show_main_menu ;;
#   esac
# }
#
# Example of overriding just the about menu action: (Using zsh instead of bash (default))
#
# show_about() {
#   exec zarchlinux-launch-or-focus-tui "zsh -c 'fastfetch; read -k 1'"
# }
