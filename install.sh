#!/bin/sh

CSDIR="${XDG_CONFIG_HOME:-$HOME/.config}/geany/colorschemes/"
echo "Installing themes into '$CSDIR'..."
mkdir -p "$CSDIR"

(
  cd 'colorschemes'
  for SCHEME in *.conf; do
    echo " => $SCHEME"
    cp "$SCHEME" "$CSDIR"
  done
)
