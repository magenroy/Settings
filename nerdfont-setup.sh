#!/bin/sh
#
# Consider using https://github.com/ronniedroid/getnf instead

nerdfont=$1
release=$2

ext="tar.xz"

[ "$nerdfont" = "" ] && nerdfont="NerdFontsSymbolsOnly"
[ "$release" = "" ] && release="3.0.2"

case $release in
    3*) ext="tar.xz";;
    *) ext="zip";;
esac

__get_nerdfont() {
    set -e
    set -u

    file="$nerdfont.$ext"

    echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v$release/$file"

    curl -fsSLo "$file" \
	"https://github.com/ryanoasis/nerd-fonts/releases/download/v$release/$file"
    case $ext in
	"tar.xz") tar xvf "$file";;
	"zip") unzip "$file";;
    esac
    rm "$file"
}


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

fc-cache -f
