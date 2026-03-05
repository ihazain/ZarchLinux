echo "Add Logout option to system menu"

zarchlinux-refresh-sddm

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Current=.*/Current=zarchlinux/' /etc/sddm.conf.d/autologin.conf
fi
