source $ZARCHLINUX_INSTALL/preflight/guard.sh
source $ZARCHLINUX_INSTALL/preflight/begin.sh
run_logged $ZARCHLINUX_INSTALL/preflight/show-env.sh
run_logged $ZARCHLINUX_INSTALL/preflight/pacman.sh
run_logged $ZARCHLINUX_INSTALL/preflight/migrations.sh
run_logged $ZARCHLINUX_INSTALL/preflight/first-run-mode.sh
run_logged $ZARCHLINUX_INSTALL/preflight/disable-mkinitcpio.sh
