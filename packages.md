- shell
  - `z` or `zoxide`
  - `zsh`
  - `fzf`
  - `neovim`
  - `fd-find`
  - maybe `bat`
  - `ripgrep`
  - `exa`? `lsd`?
- fonts
  - `fonts-noto`
  - for rendering funky symbols
    - `fonts-font-awesome`/`fontawesome-fonts`
    - `material-icons-fonts`
  - `fonts-inconsolata`/`levien-inconsolata-fonts`
  - `firacode`
  - `jetbrains-mono`
- writing
  - `texlive-full`, or at least the essentials for LaTeX
  - `texlive-lang-cjk` (or at least Japanese (for yo))
  - `pandoc`
- graphical
  - `sway`
    - `swayidle`
    - `swaylock`?
  - `swayr`? (using `cargo`)
  - some config (see `.config/sway/config.d/wait-sni-ready`) may need
    `python3-tenacity`, `python3-dbus-next`
  - `foot` should be automatically installed by `sway`
  - ~`alacritty`?~
  - `kitty`
  - `wtype`
  - `wofi` (maybe `rofi`?), `fuzzel`
  - `gammastep`
  - `wob`
  - `dunst`
  - `slurp`
  - `zathura` or `qpdfview` (might need to set "use device pixel ratio" to `true` to make it look good)
  - `libappindicator`?
  - probably `qtwayland5` and other qt wayland things
  - `waybar` (maybe `i3blocks`?)
  - `imv`? `fim`? `swayimg`?
  - `papirus` icon theme
- `playerctl`
- `pulseaudio-utils`
- `bluetooth`
- `brightnessctl`
  - may need to manually make brightness file writeable, or add user to `video`
    group (see `runthis` file)
- `chafa` for viewing images in terminal

- `npm` (make sure to have this for `coc`)
- Coc: after running the installer script `.recset/coc-installer.sh`, in `vim`,
  run `:CocInstall ` with the following
  - coc-ltex
  - coc-vimtex
  - coc-texlab
- `pip`

  - `wheel`? (apparently needed for stuff)
  - `pynvim`? (something (`coc`?) uses this?)

- tablet

  - `squeekboard` or `wvkbd`
  - `iio-sensor-proxy` is probably already installed
  - (using `cargo`?) `rot8`

- `rclone` (cloud storage)

- maybe `sensors` (used in `i3blocks` temperature script for example)

- `mpd`?

- `rxvt-unicode`? (if not using `foot`)

- consider getting

  - `iwd`
    - don't forget to change the NetworkManager backend
  - `breeze` theme
  - `Papirus` icon theme
  - `material` (icon) theme

- on Fedora
  - `zathura-pdf-mupdf`
  - `nwg` stuff
