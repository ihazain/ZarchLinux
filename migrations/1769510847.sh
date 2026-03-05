echo "Switch back to mainline chromium now that it supports full live themeing"

if zarchlinux-pkg-present zarchlinux-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    zarchlinux-pkg-drop zarchlinux-chromium
    zarch-pkg-add chromium
    zarchlinux-theme-set-browser
  fi
fi
