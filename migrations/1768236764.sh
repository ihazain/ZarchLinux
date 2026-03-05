echo "Prevent kernel upgrades from making current modules unavailable"

zarch-pkg-add kernel-modules-hook
sudo systemctl enable --now linux-modules-cleanup.service
