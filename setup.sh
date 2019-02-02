#!/bin/sh

directory="$PWD/$(dirname $0)"
files=$(find "$directory" -maxdepth 1 -type f | grep -v README.md | grep -v setup.sh)

for file in $files; do
	echo "Creating symlink from $file to $HOME"
	ln -sf $file $HOME
done
