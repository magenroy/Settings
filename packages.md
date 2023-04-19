* shell
  * `zsh`
  * `fzf`
  * `neovim`
* fonts
  * `fonts-noto`
  * `fonts-font-awesome` (for rendering funky symbols)
  * `fonts-inconsolata`
* texlive
  * `texlive-full`, or at least the essentials for LaTeX
  * `texlive-lang-cjk` (or at least Japanese (for yo))
* graphical
  * `sway`
    * `swayidle`
    * `swaylock`?
	* `swayr`? (using `cargo`)
  * `foot` should be automatically installed by `sway`
  * `wtype`
  * `wofi` (maybe `rofi`?)
  * `gammastep`
  * `wob`
  * `dunst`
  * `slurp`
  * `zathura` or `qpdfview` (might need to set "use device pixel ratio" to `true` to make it look good)
  * `libappindicator`?
  * probably `qtwayland5` and other qt wayland things
  * `waybar` (maybe `i3blocks`?)
  * `imv`? `fim`? `swayimg`?
* `playerctl`
* `pulseaudio-utils`
* `bluetooth`
* `brightnessctl`
  * may need to manually make brightness file writeable, or add user to `video`
	group (see `runthis` file)

* tablet
  * `squeekboard` or `wvkbd`
  * `iio-sensor-proxy` is probably already installed
  * (using `cargo`?) `rot8`
 
* maybe `sensors` (used in `i3blocks` temperature script for example)
 
* `mpd`?

* `rxvt-unicode`? (if not using `foot`)

* on Fedora
	* `fuzzel`?
	* `alacritty`?
	* `zathura-pdf-mupdf`
	* `nwg` stuff
