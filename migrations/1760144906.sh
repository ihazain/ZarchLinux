echo "Change zarchlinux-screenrecord to use gpu-screen-recorder"
zarchlinux-pkg-drop wf-recorder wl-screenrec

# Add slurp in case it hadn't been picked up from an old migration
zarch-pkg-add slurp gpu-screen-recorder
