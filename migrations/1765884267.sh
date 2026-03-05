echo "Change to openai-codex instead of openai-codex-bin"

if zarchlinux-pkg-present openai-codex-bin; then
    zarchlinux-pkg-drop openai-codex-bin
    zarch-pkg-add openai-codex
fi
