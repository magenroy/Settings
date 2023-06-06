#!/bin/sh

nerdfont=$1
release=$2

__get_nerdfont() {
    set -e
    set -u

	echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v$release/$nerdfont.tar.xz"

	ext=".tar.xz"

    curl -fsSLo "$nerdfont$ext" \
	"https://github.com/ryanoasis/nerd-fonts/releases/download/v$release/$nerdfont$ext"
    tar xvf "$nerdfont$ext"
    rm "$nerdfont$ext"
}

[ "$nerdfont" = "" ] && nerdfont="Inconsolata"
[ "$release" = "" ] && release="3.0.1"

fontdir=""
if [ -e "$HOME/Library/Fonts" ]; then
	# OS X
	fontdir="Library/Fonts/"
	cd "~/$fontdir"
	__get_nerdfont
else
	# Linux
	fontdir=.local/share/fonts
	mkdir -p $HOME/$fontdir
	cd "$HOME/$fontdir"
	__get_nerdfont
fi

echo "Installed $nerdfont to ~/$fontdir"

fc-cache -fv
