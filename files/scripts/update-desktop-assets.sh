#!/usr/bin/env bash
set -euo pipefail

if command -v dconf >/dev/null 2>&1; then
  dconf update
fi

if command -v gtk-update-icon-cache >/dev/null 2>&1; then
  gtk-update-icon-cache -f /usr/share/icons/hicolor || true
fi
