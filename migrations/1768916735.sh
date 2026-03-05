echo "Fix microphone gain and audio mixing on Asus ROG laptops"

source "$ZARCHLINUX_PATH/install/config/hardware/fix-asus-rog-mic.sh"
source "$ZARCHLINUX_PATH/install/config/hardware/fix-asus-rog-audio-mixer.sh"

if zarchlinux-hw-asus-rog; then
  zarchlinux-restart-pipewire
fi
