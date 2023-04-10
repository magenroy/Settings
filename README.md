### First time setup

* First install `ssh` stuff
* `ssh-keygen` the keys (as in instructions for setting up ssh for Github)
* in home directory:
	```sh
	git clone git@github.com:magenroy/Settings
	mv Settings .recset		# optional
	cd /
	sudo tar xvf $HOME/.recset/system.tar
	recset deploy
	```
* install packages from `packages.md` as needed
* consider running commands from `runthis`

### Keeping up to date

* Use the `recset` command to keep config files up to date (see help message
  there)
* if there is a new package that is essential, add it to `packages.md`
* if there is some configuration that requires running commands, consider
  adding it to `runthis`
