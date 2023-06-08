### First time setup

* First install `ssh` stuff
* `ssh-keygen` the keys (as in [instructions for setting up ssh for
  Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account))
  * `ssh-keygen -t ed25519 -C "magenroy@gmail.com"` (see
  [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key))
  * copy the contents of `~/.ssh/id_ed25519.pub` to clipboard
  * go to appropriate section of settings in github to add new ssh key
* in home directory:
	```sh
	git clone git@github.com:magenroy/Settings
	mv Settings .recset		# optional
	cd /
	sudo tar xvf $HOME/.recset/system.tar
	recset deploy
	```
* install packages from [`packages.md`](packages.md) as needed
* consider running commands from `runthis`

### Keeping up to date

* Use the `recset` command to keep config files up to date (see help message
  there)
* If there are new config files:
	* For system files: add the absolute path to `system`
	* For user files: add the path relative to `$HOME` to `user`
* if there is a new package that is essential, add it to [`packages.md`](packages.md)
* if there is some configuration that requires running commands, consider
  adding it to `runthis`

### Misc

* run ```sh curl
  https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/bin/scripts/test-fonts.sh | bash``` to test fonts
