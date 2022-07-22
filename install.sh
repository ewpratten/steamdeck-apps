#! /bin/bash
set -e
echo "Installing .desktop files..."

# Load all files
for file in apps/*.desktop; do
    echo "Installing $file..."
    desktop-file-install --dir=$HOME/.local/share/applications $file
done

# Link every icon to the correct location
mkdir -p $HOME/.icons
for file in icons/*.png; do
    echo "Linking ICON $file..."
    ln -sf $file $HOME/.icons
done